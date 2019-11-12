Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50E71F8B63
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 10:08:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kEv7U6yr39DZ0L6CI2N8JTCFQVbYb4SrH+ISCK5BRFs=; b=CAlsS3/J1GojRy
	Owtv75Osqj/9zJOA8eCXl4/NVsiWxz7wKI8FdprEtSI6+kaMoTvunexXUBJ8xCALr9vhpd5xExo5O
	qvrMQspGbeZSyKlxD4mWkmnH7c6cfx9RumkasOdyLazTpf+lnUkeca69YhqPDcI0EOotkxphq2uzr
	7Gyq6le4ZrMAemLIsXLA2zBUzT9x9yn6KC3cf1gHtAqS+z1KR79gnrhlnNQhJBwtTgjUSQzibzt0/
	LX85fQvf+cbhD87c/e2vTP++V3y+otIdHGm7z25+omlMxfILnwGG8X+ODYklK+dOs9wPHAaHvs9Ap
	2WUDORGh9sFUO3WACUJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUSA1-0002IB-LX; Tue, 12 Nov 2019 09:08:29 +0000
Received: from mail.skyhub.de ([2a01:4f8:190:11c2::b:1457])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUS9r-0002Gi-BF
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 09:08:20 +0000
Received: from zn.tnic (p2E584DC9.dip0.t-ipconnect.de [46.88.77.201])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id B7B2B1EC0CA6;
 Tue, 12 Nov 2019 10:08:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alien8.de; s=dkim;
 t=1573549692;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=OgSHUZN/Tc3i/urvdGyHhzYbE4TfA+OAcjxyh6wdl0g=;
 b=TXMJi5aaVamyTSkyaP9txWDmgil75yVNGXtDUK2qSQN3N80SBfbaeRkTqeGgjmWl075E2M
 Kt8DTCIeiyBtyF1bzFcLzy3ueZApeoMic9zdYDtq0MMAzlOQB5cV9nqr1C/S/PPR32Bt9a
 r2knCvp2XhycAsilLgrafbGrFBj7hRs=
Date: Tue, 12 Nov 2019 10:07:36 +0100
From: Borislav Petkov <bp@alien8.de>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH v2 11/29] vmlinux.lds.h: Replace RODATA with RO_DATA
Message-ID: <20191112090736.GA32336@zn.tnic>
References: <20191011000609.29728-1-keescook@chromium.org>
 <20191011000609.29728-12-keescook@chromium.org>
 <CAMuHMdXfPyti1wFBb0hhf3CeDSQ=zVv7cV-taeYCmDswMQkXPQ@mail.gmail.com>
 <201911110922.17A2112B0@keescook>
 <CAMuHMdUJ8QPvqf51nVmOg1Zm20SNT7pXR72z=qmco=ecwawZ7A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMuHMdUJ8QPvqf51nVmOg1Zm20SNT7pXR72z=qmco=ecwawZ7A@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_010819_546113_066A808A 
X-CRM114-Status: UNSURE (   9.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Linux-Arch <linux-arch@vger.kernel.org>,
 linux-s390 <linux-s390@vger.kernel.org>, Michal Simek <monstr@monstr.eu>,
 the arch/x86 maintainers <x86@kernel.org>,
 "linux-ia64@vger.kernel.org" <linux-ia64@vger.kernel.org>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 linux-xtensa@linux-xtensa.org, Michael Ellerman <mpe@ellerman.id.au>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 Yoshinori Sato <ysato@users.sourceforge.jp>,
 Parisc List <linux-parisc@vger.kernel.org>, Andy Lutomirski <luto@kernel.org>,
 alpha <linux-alpha@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rick Edgecombe <rick.p.edgecombe@intel.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-c6x-dev@linux-c6x.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBOb3YgMTEsIDIwMTkgYXQgMDc6MDg6NTFQTSArMDEwMCwgR2VlcnQgVXl0dGVyaG9l
dmVuIHdyb3RlOgo+IHZtbGludXgtc3RkLmxkczogQWxsIG90aGVyIGNsYXNzaWMgNjgweDAgdGFy
Z2V0cyB3aXRoIGFuIE1NVSwgZS5nLiBwbGFpbgo+ICAgICAgICAgICAgICAgICAgZGVmY29uZmln
IGFrYSBtdWx0aV9kZWZjb25maWcuCgpGV0lXLCB0aGUgZGVmY29uZmlnIGRvZXNuJ3QgYnVpbGQg
d2l0aCB0aGUgY3Jvc3MgY29tcGlsZXLCuSBoZXJlLCBldmVuIHdpdGggS2VlcycKcGF0Y2ggYXBw
bGllZCBidXQgZm9yIGEgZGlmZmVyZW50IHJlYXNvbjoKCiQgbWFrZS5jcm9zcyBBUkNIPW02OGsg
ZGVmY29uZmlnCi4uLgoKJG1ha2UuY3Jvc3MgQVJDSD1tNjhrIDI+dy5sb2cKLi4uCmRyaXZlcnMv
dmlkZW8vZmJkZXYvYzJwX3BsYW5hci5vOiBJbiBmdW5jdGlvbiBgdHJhbnNwOCc6CmMycF9wbGFu
YXIuYzooLnRleHQrMHgxM2EpOiB1bmRlZmluZWQgcmVmZXJlbmNlIHRvIGBjMnBfdW5zdXBwb3J0
ZWQnCmMycF9wbGFuYXIuYzooLnRleHQrMHgxZGUpOiB1bmRlZmluZWQgcmVmZXJlbmNlIHRvIGBj
MnBfdW5zdXBwb3J0ZWQnCmRyaXZlcnMvdmlkZW8vZmJkZXYvYzJwX2lwbGFuMi5vOiBJbiBmdW5j
dGlvbiBgdHJhbnNwNHguY29uc3Rwcm9wLjAnOgpjMnBfaXBsYW4yLmM6KC50ZXh0KzB4OTgpOiB1
bmRlZmluZWQgcmVmZXJlbmNlIHRvIGBjMnBfdW5zdXBwb3J0ZWQnCm1ha2U6ICoqKiBbTWFrZWZp
bGU6MTA5NDogdm1saW51eF0gRXJyb3IgMQoKCsK5IGh0dHBzOi8vbWlycm9ycy5lZGdlLmtlcm5l
bC5vcmcvcHViL3Rvb2xzL2Nyb3NzdG9vbC9maWxlcy9iaW4veDg2XzY0LzguMS4wLwoKLS0gClJl
Z2FyZHMvR3J1c3MsCiAgICBCb3Jpcy4KCmh0dHBzOi8vcGVvcGxlLmtlcm5lbC5vcmcvdGdseC9u
b3Rlcy1hYm91dC1uZXRpcXVldHRlCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
