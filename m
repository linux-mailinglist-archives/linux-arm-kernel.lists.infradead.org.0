Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E1391C2BE4
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 May 2020 13:43:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UWsR6f6DMZa/WlodC6dTU187hw6Y0n8NA5hW8hwS3s0=; b=fX5I5C2xtSfj2I
	gtvqEJZbKUAYaYbsuHJBbfN7lBxHtdzdpkEUIzZq0R187E4BvRzIBgMfKBh7AQii2YSac/f8o20PK
	bu3HbHVw6RVQUMEEpZ8Y8vV50ftrNgBR3+2TBdUci5QEhbrEAEu7ltg7Df4H/f5q3dK8yN6p6jpea
	JBe9hKTIl03wLWGrdhyrE17WJdjtOoh+OfQ4O6xQtG/RIVUxnmrZ6QUyUzIr0qflZEPOtxPWb6mw4
	htYHUDmSvEFU/hbDvmXCvwrZ9OnbkCRVEVJs6DD3Nnli2T1fc3nE032Rk+bu8Wij7KeL3uk9oErZm
	r6PfKX1issovD4zzH0nA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVD1I-0004R2-LX; Sun, 03 May 2020 11:42:52 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVD1C-0004QM-7w
 for linux-arm-kernel@lists.infradead.org; Sun, 03 May 2020 11:42:47 +0000
Received: by mail-io1-xd41.google.com with SMTP id e9so9366019iok.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 03 May 2020 04:42:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=CswbDbzRoY7hOaMpKGQ7lTgkmEKRA2Ia8858GzcpRyQ=;
 b=B/VeyKDZ4SLuIY7xHuxpXOzOskfvZKU+A5FK81ESN3wNpQDFeg5YMMn10lN8K1HlzU
 ucNQI44nZ0RuaN9V467tsqNfMHZxbuNPptiUAsaVg3KYYzH75VV4unRSTt+NsACNb4lc
 dmcvbKyaOxB31ly2JwulyTgFbdifyHm56KvXnfOHErfj5UVE7YK2+skEdePVFu+BR44B
 uhVpDPvmnRDtBvfnAqrbUU5KLt9w1767QhJPPXsDn7tZknjhE++fAPu4TrDilwXBU/d1
 P2CRaRavJOqCiQE5DwlZs5i9VhlFSnNBdt72/1BGc2EAlaYKKm0a8lAz8UeYwOT07Ide
 HpOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=CswbDbzRoY7hOaMpKGQ7lTgkmEKRA2Ia8858GzcpRyQ=;
 b=imt0c7x+x2pk1dW9MupPM4M+Ov/Vbj5lOXFwKVQj+C0VsaoW5k8i0toZKL+r/7L7yc
 j6MfNZNcfA4ZxSgYucfzEccvEM3FPLee2r++eUc/uH/YqfQDuqWsShgdqPQhGwjEP4/4
 V68QaZrZVCDMN3DnMtiBrJ8xnmzpaLfw32LXEROXQIED6BfuYzTSWzmO73gW0DUtfO14
 phlAgtk9vdVwZmgpgGlHa9+eS3hI/bm6GlZfzpjV9eJcZwmpQ5b3du8sfsiWQUDs3p2G
 iZkB3IBdZPUw4o/EKeAfcbN5p0InTH4Wm1/oUapbgiismBgPtcbxlr+NfaN2Upwkl1vU
 waAw==
X-Gm-Message-State: AGi0Pua6vZBK1OqFbYzDmklXg+xYbci8t0N8NXGjNJvK4sDyjh265wjo
 G2z1GQ1ZsY4K4bmBUKFDIs/TOtltl1ABKfsLPb4=
X-Google-Smtp-Source: APiQypK7bQYFFm90yVaM++6A1mWUH1dHV3MQb0qbIp+ohH4OaxgHO6pX+nd1tdial7Rn5XJUxQbfqsSdn1DrT9htlVU=
X-Received: by 2002:a02:3f44:: with SMTP id c4mr10593844jaf.144.1588506164909; 
 Sun, 03 May 2020 04:42:44 -0700 (PDT)
MIME-Version: 1.0
References: <20200426104115.22630-1-peron.clem@gmail.com>
 <20200426104115.22630-7-peron.clem@gmail.com>
 <CAGb2v66TFzpEmzdqxmjqGvVONkPEhaDMHNA4tRUvrX_Mg8w=tA@mail.gmail.com>
In-Reply-To: <CAGb2v66TFzpEmzdqxmjqGvVONkPEhaDMHNA4tRUvrX_Mg8w=tA@mail.gmail.com>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Sun, 3 May 2020 13:42:33 +0200
Message-ID: <CAJiuCcfpk=9E2dQnE+QeZrDHG7EqCBWqbEbnpBvhn-uvWuRV2w@mail.gmail.com>
Subject: Re: [PATCH v3 6/7] ASoC: sun4i-i2s: Adjust regmap settings
To: Chen-Yu Tsai <wens@csie.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_044246_284217_C822487C 
X-CRM114-Status: UNSURE (   9.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Linux-ALSA <alsa-devel@alsa-project.org>, Marcus Cooper <codekipper@gmail.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Takashi Iwai <tiwai@suse.com>,
 Maxime Ripard <mripard@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiBNb24sIDI3IEFwciAyMDIwIGF0IDEzOjAzLCBDaGVuLVl1IFRzYWkgPHdlbnNAY3Np
ZS5vcmc+IHdyb3RlOgo+Cj4gT24gU3VuLCBBcHIgMjYsIDIwMjAgYXQgNjo0MSBQTSBDbMOpbWVu
dCBQw6lyb24gPHBlcm9uLmNsZW1AZ21haWwuY29tPiB3cm90ZToKPiA+Cj4gPiBGcm9tOiBNYXJj
dXMgQ29vcGVyIDxjb2Rla2lwcGVyQGdtYWlsLmNvbT4KPiA+Cj4gPiBCeXBhc3MgdGhlIHJlZ21h
cCBjYWNoZSB3aGVuIGZsdXNoaW5nIG9yIHJlYWRpbmcgdGhlIGkycyBGSUZPcy4KPiA+Cj4gPiBT
aWduZWQtb2ZmLWJ5OiBNYXJjdXMgQ29vcGVyIDxjb2Rla2lwcGVyQGdtYWlsLmNvbT4KPiA+IFNp
Z25lZC1vZmYtYnk6IENsw6ltZW50IFDDqXJvbiA8cGVyb24uY2xlbUBnbWFpbC5jb20+Cj4KPiBB
Y2tlZC1ieTogQ2hlbi1ZdSBUc2FpIDx3ZW5zQGNzaWUub3JnPgoKVGhlICBTVU40SV9JMlNfRklG
T19DVFJMX1JFRyBpcyBhbHNvIG1pc3NpbmcuCkFzIHNvbWUgYml0cyBjYW4gc2VsZi1jbGVhciBi
eSB0aGVtc2VsdmVzLgoKSSB3aWxsIGZpeCB0aGlzIGluIHY0LgoKUmVnYXJkcywKQ2xlbWVudAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
