Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 670CAD7F36
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 20:42:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6c/XnafgSTzksbEQzGcf+LLymX/AUJ7FZbiq8hihWOk=; b=keozDoctfK64bY
	1gEyayW22Jfusw7TWDfZ6RB7W3lBe+IjzQBI18WmPmfIlCwqvLy/iNfvnew0a30zHAEfOg93tUDmg
	qJZ78HjrOp4fm22hcxq2aAxxiVdpVann4jwoLflwuwu4nsJMkD44tJnm3w7Rqzz2Gmry9Qs3wWguB
	+PgjxQHiGd0e6tx76ule+PwJLnY3cllhNuLf25uKQRXkGlCY9NVCosAMiTN7NjvB1ymtioyKymwj7
	IpSosoe0ojO3SD4LKARI/wtJwuEX76tl4EoVmdSz2hzAfRwIYgxZ5S4GxhvlWr2RBctyUMCh7P8tc
	ypf4V5v452SkV9UK7ucQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKRlw-0003GO-ML; Tue, 15 Oct 2019 18:42:16 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKRll-0003Eu-Kr
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 18:42:07 +0000
Received: by mail-qt1-x842.google.com with SMTP id m15so32114327qtq.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 11:42:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=YXiUOqo8ETclVClbFsr4YOWOeJ7XlxA5Qh2JOUOHtn0=;
 b=ih4zeCbnEW9LSQmgDID0erLrP4wKSRd4quPFdjB7jDfMBRahOCBa+C67Dy1NqHkrCv
 VJSNTqSrY43O2EJhupvXVshQ0BC82dIhxESVHTwLHkCEPN42OBS3yBTYdKusIr1FPyqX
 wpUPZ/cGTRy5YK2T6ObGKxHp1+6vi2CjoWlyTCo/dPXrhBn0tNseTwJyJuKrduDqfttY
 fd4SW/I4j0BpnaIdz6zO9hqQf6+agjiuheLCXQaQrYEDCeHJq0DF3gEtcT6Uvp1RF+B9
 gDgx+ctEQBhsj7GuizlLnNWuM5pbIfjPRVvTdcRA7Ese4V0mQHl7lb1qg7KFEBXx5acS
 G4wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YXiUOqo8ETclVClbFsr4YOWOeJ7XlxA5Qh2JOUOHtn0=;
 b=HTYP1gLlLAaGRrQn0Q+7C49rq6AMSh1+azHetTBNX1+KYeWtnbd5NqgGPGMO8rDVpW
 QkDdC5n/5DefwDpbRIZMzGZJ+ukez36MajZGeZnl0CloJrkAcgdfWbzZsNCGSN4FA87W
 gDp3dAKVoU+UdqQ0MqorDVizzXvpiT46mJbhRFh4ZD8+GnWGTCRSSSIwTy/4+PFxK5Gs
 OzuH/eKGxeOtcoPyxEUtE/W+qa2doJwaa5T0kZ5P4btgf+nRC2NpUD1WG+ZyoaD/mx0d
 mqZQZGqcHWk4j2lmzOWWUvlMo5vtBEhSZZKt15d6yNlpoQsO14C8TYUuhGFMwkP2bVGr
 uOVw==
X-Gm-Message-State: APjAAAU9OawdHbr6uZRyMmrxqDhF8f3141GTIkeUDERLJLWMfp03c8DU
 cdaW393ZAzRdzenOVcc/trDOVg==
X-Google-Smtp-Source: APXvYqwar5I/V60pS57/UcDUw1cogFuq6+7hHVlNRpscniqz5EATufxt8kONpUilAAyTNCHiUcXZ9w==
X-Received: by 2002:ac8:1c49:: with SMTP id j9mr41218038qtk.364.1571164924491; 
 Tue, 15 Oct 2019 11:42:04 -0700 (PDT)
Received: from dhcp-41-57.bos.redhat.com (nat-pool-bos-t.redhat.com.
 [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id o28sm9204198qkk.106.2019.10.15.11.42.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 15 Oct 2019 11:42:03 -0700 (PDT)
Message-ID: <1571164920.5937.45.camel@lca.pw>
Subject: Re: [PATCH V6 0/2] mm/debug: Add tests validating architecture page
 table helpers
From: Qian Cai <cai@lca.pw>
To: Anshuman Khandual <anshuman.khandual@arm.com>, linux-mm@kvack.org
Date: Tue, 15 Oct 2019 14:42:00 -0400
In-Reply-To: <c052784a-a5d7-878e-cd97-01daa90c0ed8@arm.com>
References: <1571131302-32290-1-git-send-email-anshuman.khandual@arm.com>
 <1571150502.5937.39.camel@lca.pw>
 <c052784a-a5d7-878e-cd97-01daa90c0ed8@arm.com>
X-Mailer: Evolution 3.22.6 (3.22.6-10.el7) 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_114205_691449_C96267E8 
X-CRM114-Status: GOOD (  17.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-ia64@vger.kernel.org,
 linux-sh@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 James Hogan <jhogan@kernel.org>, Heiko Carstens <heiko.carstens@de.ibm.com>,
 Michal Hocko <mhocko@kernel.org>, Dave Hansen <dave.hansen@intel.com>,
 Paul Mackerras <paulus@samba.org>, sparclinux@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, linux-s390@vger.kernel.org,
 Jason Gunthorpe <jgg@ziepe.ca>, Michael Ellerman <mpe@ellerman.id.au>,
 x86@kernel.org, Russell King - ARM Linux <linux@armlinux.org.uk>,
 Matthew Wilcox <willy@infradead.org>, Steven Price <Steven.Price@arm.com>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 linux-snps-arc@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Kees Cook <keescook@chromium.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Mark Brown <broonie@kernel.org>, "Kirill A . Shutemov" <kirill@shutemov.name>,
 Dan Williams <dan.j.williams@intel.com>, Vlastimil Babka <vbabka@suse.cz>,
 Christophe Leroy <christophe.leroy@c-s.fr>,
 Sri Krishna chowdary <schowdary@nvidia.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 Paul Burton <paul.burton@mips.com>, Mike Rapoport <rppt@linux.vnet.ibm.com>,
 Vineet Gupta <vgupta@synopsys.com>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>,
 Mike Kravetz <mike.kravetz@oracle.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAyMDE5LTEwLTE1IGF0IDIwOjUxICswNTMwLCBBbnNodW1hbiBLaGFuZHVhbCB3cm90
ZToKPiAKPiBPbiAxMC8xNS8yMDE5IDA4OjExIFBNLCBRaWFuIENhaSB3cm90ZToKPiA+IFRoZSB4
ODYgd2lsbCBjcmFzaCB3aXRoIGxpbnV4LW5leHQgZHVyaW5nIGJvb3QgZHVlIHRvIHRoaXMgc2Vy
aWVzICh2NSkgd2l0aCB0aGUKPiA+IGNvbmZpZyBiZWxvdyBwbHVzIENPTkZJR19ERUJVR19WTV9Q
R1RBQkxFPXkuIEkgYW0gbm90IHN1cmUgaWYgdjYgd291bGQgYWRkcmVzcwo+ID4gaXQuCj4gPiAK
PiA+IGh0dHBzOi8vcmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbS9jYWlsY2EvbGludXgtbW0vbWFz
dGVyL3g4Ni5jb25maWcKPiA+IAo+ID4gW8KgwqDCoDMzLjg2MjYwMF1bwqDCoMKgwqBUMV0gcGFn
ZTpmZmZmZWEwMDA5MDAwMDAwIGlzIHVuaW5pdGlhbGl6ZWQgYW5kIHBvaXNvbmVkCj4gPiBbwqDC
oMKgMzMuODYyNjA4XVvCoMKgwqDCoFQxXSByYXc6IGZmZmZmZmZmZmZmZmZmZmYgZmZmZmZmZmZm
ZmZmZmZmZiBmZmZmZmZmZmZmZmZmZmZmCj4gPiBmZmZmZmY4NzExNDBdW8KgwqDCoMKgVDFdwqDC
oD8gX3Jhd19zcGluX3VubG9ja19pcnErMHgyNy8weDQwCj4gPiBbwqDCoMKgMzMuODcxMTQwXVvC
oMKgwqDCoFQxXcKgwqA/IHJlc3RfaW5pdCsweDMwNy8weDMwNwo+ID4gW8KgwqDCoDMzLjg3MTE0
MF1bwqDCoMKgwqBUMV3CoMKga2VybmVsX2luaXQrMHgxMS8weDEzOQo+ID4gW8KgwqDCoDMzLjg3
MTE0MF1bwqDCoMKgwqBUMV3CoMKgPyByZXN0X2luaXQrMHgzMDcvMHgzMDcKPiA+IFvCoMKgwqAz
My44NzExNDBdW8KgwqDCoMKgVDFdwqDCoHJldF9mcm9tX2ZvcmsrMHgyNy8weDUwCj4gPiBbwqDC
oMKgMzMuODcxMTQwXVvCoMKgwqDCoFQxXSBNb2R1bGVzIGxpbmtlZCBpbjoKPiA+IFvCoMKgwqAz
My44NzExNDBdW8KgwqDCoMKgVDFdIC0tLVsgZW5kIHRyYWNlIGU5OWQzOTJiMGY3YmVmYmQgXS0t
LQo+ID4gW8KgwqDCoDMzLjg3MTE0MF1bwqDCoMKgwqBUMV0gUklQOiAwMDEwOmFsbG9jX2dpZ2Fu
dGljX3BhZ2Vfb3JkZXIrMHgzZmUvMHg0OTAKPiAKPiBIbW0sIHdpdGggZGVmY29uZmlnIChERUJV
R19WTT15IGFuZCBERUJVR19WTV9QR1RBQkxFPXkpIGl0IGRvZXMgbm90IGNyYXNoIGJ1dAo+IHdp
dGggdGhlIGNvbmZpZyBhYm92ZSwgaXQgZG9lcy4gSnVzdCB3b25kZXJpbmcgaWYgaXQgaXMgcG9z
c2libGUgdGhhdCB0aGVzZQo+IHBhZ2VzIG1pZ2h0IG5vdCBiZWVuIGluaXRpYWxpemVkIHlldCBi
ZWNhdXNlIERFRkVSUkVEX1NUUlVDVF9QQUdFX0lOSVQ9eSA/CgpZZXMsIHRoaXMgcGF0Y2ggd29y
a3MgZmluZS4KCmRpZmYgLS1naXQgYS9pbml0L21haW4uYyBiL2luaXQvbWFpbi5jCmluZGV4IDY3
NmQ4MDIwZGQyOS4uNTkxYmU4ZjllOGUwIDEwMDY0NAotLS0gYS9pbml0L21haW4uYworKysgYi9p
bml0L21haW4uYwpAQCAtMTE3Nyw3ICsxMTc3LDYgQEAgc3RhdGljIG5vaW5saW5lIHZvaWQgX19p
bml0IGtlcm5lbF9pbml0X2ZyZWVhYmxlKHZvaWQpCsKgwqDCoMKgwqDCoMKgwqB3b3JrcXVldWVf
aW5pdCgpOwrCoArCoMKgwqDCoMKgwqDCoMKgaW5pdF9tbV9pbnRlcm5hbHMoKTsKLcKgwqDCoMKg
wqDCoMKgZGVidWdfdm1fcGd0YWJsZSgpOwrCoArCoMKgwqDCoMKgwqDCoMKgZG9fcHJlX3NtcF9p
bml0Y2FsbHMoKTsKwqDCoMKgwqDCoMKgwqDCoGxvY2t1cF9kZXRlY3Rvcl9pbml0KCk7CkBAIC0x
MTg2LDYgKzExODUsOCBAQCBzdGF0aWMgbm9pbmxpbmUgdm9pZCBfX2luaXQga2VybmVsX2luaXRf
ZnJlZWFibGUodm9pZCkKwqDCoMKgwqDCoMKgwqDCoHNjaGVkX2luaXRfc21wKCk7CsKgCsKgwqDC
oMKgwqDCoMKgwqBwYWdlX2FsbG9jX2luaXRfbGF0ZSgpOworwqDCoMKgwqDCoMKgwqBkZWJ1Z192
bV9wZ3RhYmxlKCk7CisKwqDCoMKgwqDCoMKgwqDCoC8qIEluaXRpYWxpemUgcGFnZSBleHQgYWZ0
ZXIgYWxsIHN0cnVjdCBwYWdlcyBhcmUgaW5pdGlhbGl6ZWQuICovCsKgwqDCoMKgwqDCoMKgwqBw
YWdlX2V4dF9pbml0KCk7Cgo+IAo+IFsgICAxMy44OTg1NDldWyAgICBUMV0gcGFnZTpmZmZmZWEw
MDA1MDAwMDAwIGlzIHVuaW5pdGlhbGl6ZWQgYW5kIHBvaXNvbmVkCj4gWyAgIDEzLjg5ODU0OV1b
ICAgIFQxXSByYXc6IGZmZmZmZmZmZmZmZmZmZmYgZmZmZmZmZmZmZmZmZmZmZiBmZmZmZmZmZmZm
ZmZmZmZmIGZmZmZmZmZmZmZmZmZmZmYKPiBbICAgMTMuODk4NTQ5XVsgICAgVDFdIHJhdzogZmZm
ZmZmZmZmZmZmZmZmZiBmZmZmZmZmZmZmZmZmZmZmIGZmZmZmZmZmZmZmZmZmZmYgZmZmZmZmZmZm
ZmZmZmZmZgo+IFsgICAxMy44OTg1NDldWyAgICBUMV0gcGFnZSBkdW1wZWQgYmVjYXVzZTogVk1f
QlVHX09OX1BBR0UoUGFnZVBvaXNvbmVkKHApKQo+IFsgICAxMy44OTg1NDldWyAgICBUMV0gLS0t
LS0tLS0tLS0tWyBjdXQgaGVyZSBdLS0tLS0tLS0tLS0tCj4gWyAgIDEzLjg5ODU0OV1bICAgIFQx
XSBrZXJuZWwgQlVHIGF0IC4vaW5jbHVkZS9saW51eC9tbS5oOjExMDchCj4gWyAgIDEzLjg5ODU0
OV1bICAgIFQxXSBpbnZhbGlkIG9wY29kZTogMDAwMCBbIzFdIFNNUCBERUJVR19QQUdFQUxMT0Mg
S0FTQU4gUFRJCj4gWyAgIDEzLjg5ODU0OV1bICAgIFQxXSBDUFU6IDAgUElEOiAxIENvbW06IHN3
YXBwZXIvMCBOb3QgdGFpbnRlZCA1LjQuMC1yYzMtbmV4dC0yMDE5MTAxNSsgIwoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
