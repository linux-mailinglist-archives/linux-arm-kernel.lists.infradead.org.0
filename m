Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B074DF0EFE
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 07:39:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=poPhRrGjt390RduPdRJ7oLtS/mLEFwITILqnfhlXfgU=; b=M+7cm9TtgU3Zfs
	nEov6b3Gi+UrgT/npCl4KDmSBrBh+xq6zX8ORd+y3hbZwlJI6dQ2Knt4b6fsTCfhw9rRqS+pJ+0nq
	U6BB7EQEqkh+oileJUVtZWCBBig5w9Lmu/dsSO9XlThDAFt16kDQ0X2ZrVgNacaoVmusSApKWQqKe
	K4U86l4RDYs10tmMuDSa+tSP2CbqpEBUTMzKOH+ovxSYM2TPJV6V3VUHB0O/Vm7a7hp0fZlRNQ50G
	r88UpZDhEAf7mZLYOH2P6y6IIPePaSDCQGojUGK//pLjd94HUV3YRz7F5mGpFUeZGxvz4d1/sjbyG
	hX9zEUcc5xoLt7kKE+Bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSEye-0005TS-ST; Wed, 06 Nov 2019 06:39:36 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSEyX-0005Si-4Y
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 06:39:31 +0000
Received: by mail-vs1-xe43.google.com with SMTP id k15so15251041vsp.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 22:39:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=benyossef-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=naIjmil/eDlIhuN1fRpN8utbfrj7V2f7nfg6i0zi9os=;
 b=O8lvHuCYOsjSvIspZjZEamNdAc57lSBhmQ4BHC0WDcT4VZ6sGPlb8JILexnhOnK5uk
 C+/pbM6qg/RShmMIJccN1TdVIsXzH1Ast6gI9pUXWwnoZFK3BqBKfTdsm/dwNGR9kqg8
 YqllsdJCRsf/MRH3XLhBVT6BtP8wOvN4UWElp70sZNQBnQA8M4OQr+NMWr4D+fBOnzX4
 oV2gc1kFuavAza+0lWf4HkSgyoZKkJiaVdd2UNHd+NH5Wj7VG3fDt6BCAUVOpTmNo5k1
 e1Jl3oMoAkNSQgDZ+0IeK9AZb1z5WHXlZFzwziF6CCXfipjcjeaoWpEgiBzaD6jNR+ft
 Hqsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=naIjmil/eDlIhuN1fRpN8utbfrj7V2f7nfg6i0zi9os=;
 b=pN+U2vMPT0MoBljR9MN7sNrWCky+zOZI2gU2/pO4khayfJ9GuwDSGGAkgupENilqhy
 BbAKETcDx7zg6eMKDeZjB39HvKTCRwutaErWrWDwLxC6lR9CRJTnfbb6hDb0bpZveeXE
 olTkT8N97hyHp4F956NA8xjCxnxg/Y/UE/yiAAw0LqTmzg2/+HDWLVC6s8h4pVED/nER
 K1IVqW4pu+j97mt68zqFpmmK/nQmyU9L5UmeH/VjNehq0G+8CaCbUqtVpalXcMVikRg4
 gY8F+EFnBPXXqEqbN0vmvlX5P6HF5uG7A3sT6bz837kpepfWua7pL4lUeLIfLsg84V4t
 AMnQ==
X-Gm-Message-State: APjAAAWCQxqXWakH5vpl7kKJ/pysKWA42VkRrywYto74cylWIU455n8M
 rSwzhb/4XCKZvPD0mfnFbno+/DeDPBq1EO0pbXfgeQ==
X-Google-Smtp-Source: APXvYqwx1zhWLMrwogf094GTv2o+PG1mzKh4ezkBNg26UoMeRywODdweQCGivqRbHtYgcJ5q6W1s0Kqvq8Xf1BLrOEc=
X-Received: by 2002:a67:324d:: with SMTP id y74mr504583vsy.193.1573022367862; 
 Tue, 05 Nov 2019 22:39:27 -0800 (PST)
MIME-Version: 1.0
References: <20191017122549.4634-1-t-kristo@ti.com>
 <20191017122549.4634-10-t-kristo@ti.com>
In-Reply-To: <20191017122549.4634-10-t-kristo@ti.com>
From: Gilad Ben-Yossef <gilad@benyossef.com>
Date: Wed, 6 Nov 2019 08:39:16 +0200
Message-ID: <CAOtvUMeBXjDBhSVgMOW=hshEx_AkNPg-Zk2c2jCDzY8vyXWW5g@mail.gmail.com>
Subject: Re: [PATCH 09/10] crypto: add timeout to crypto_wait_req
To: Tero Kristo <t-kristo@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_223929_183090_3FB07854 
X-CRM114-Status: GOOD (  18.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Eric Biggers <ebiggers@google.com>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 linux-omap@vger.kernel.org, David Miller <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgoKT24gVGh1LCBPY3QgMTcsIDIwMTkgYXQgMzoyNiBQTSBUZXJvIEtyaXN0byA8dC1rcmlz
dG9AdGkuY29tPiB3cm90ZToKPgo+IEN1cnJlbnRseSBjcnlwdG9fd2FpdF9yZXEgd2FpdHMgaW5k
ZWZpbml0ZWx5IGZvciBhbiBhc3luYyBjcnlwdG8gcmVxdWVzdAo+IHRvIGNvbXBsZXRlLiBUaGlz
IGlzIGJhZCBhcyBpdCBjYW4gY2F1c2UgZm9yIGV4YW1wbGUgdGhlIGNyeXB0byB0ZXN0Cj4gbWFu
YWdlciB0byBoYW5nIHdpdGhvdXQgYW55IG5vdGlmaWNhdGlvbiBhcyB0byB3aHkgaXQgaGFzIGhh
cHBlbmVkLgo+IEluc3RlYWQgb2Ygd2FpdGluZyBpbmRlZmluaXRlbHksIGFkZCBhIDEgc2Vjb25k
IHRpbWVvdXQgdG8gdGhlIGNhbGwsCj4gYW5kIHByb3ZpZGUgYSB3YXJuaW5nIHByaW50IGlmIGEg
dGltZW91dCBoYXBwZW5zLgoKV2hpbGUgdGhlIGluY2VudGl2ZSBpcyBjbGVhciBhbmQgcG9zaXRp
dmUsIHRoaXMgc3VnZ2VzdGVkIHNvbHV0aW9uCmNyZWF0ZXMgcHJvYmxlbXMgb2YgaXRzIG93bi4K
SW4gbWFueSAobW9zdD8pIGNhc2VzIHdoZXJlIHdlIGFyZSB3YWl0aW5nIGhlcmUsIHdlIGFyZSB3
YWl0aW5nIGZvciBhCkRNQSBvcGVyYXRpb24gdG8gZmluaXNoIGZyb20gaGFyZHdhcmUuCkV4aXRp
bmcgd2hpbGUgdGhpcyBwZW5kaW5nIERNQSBvcGVyYXRpb24gaXMgbm90IGZpbmlzaGVkLCBldmVu
IHdpdGggYQpwcm9wZXIgZXJyb3IgcmV0dXJuIHZhbHVlLCBpcyBkYW5nZXJvdXMgYmVjYXVzZQp1
bmxlc3MgdGhlIGNhbGxpbmcgY29kZSB0YWtlcyBncmVhdCBjYXJlIHRvIG5vdCByZWxlYXNlIHRo
ZSBtZW1vcnkgdGhlCkRNQSBpcyBiZWluZyBkb25lIGZyb20vdG8sIHRoaXMgY2FuIGhhdmUgZGlz
YXN0cm91cyBlZmZlY3RzLgoKQXMgRXJpYyBoYXMgYWxyZWFkeSBtZW50aW9uZWQsIG9uZSBzZWNv
bmQgbWlnaHQgc2VlbSBsaWtlIGEgbG9uZyB0aW1lLApidXQgd2UgZG9uJ3QgcmVhbGx5IGtub3cg
aWYgaXQgaXMgZW5vdWdoLgoKSG93IGFib3V0IGFkZGluZyBhIHNlY29uZCBBUEkgKGlnLiBjcnlw
dG9fd2FpdF9yZXFfdGltZW91dCkgd2hpY2gKc3VwcG9ydHMgYSBjYWxlZSBzcGVjaWZpZWQgdGlt
ZW91dCB3aGVyZQp0aGUgY2FsbGUga25vd3MgaG93IHRvIGNvcnJlY3RseSBkZWFsIHdpdGggdGlt
ZW91dCBhbmQgcG9ydCB0aGUKcmVsZXZhbnQgY2FsbCBzaXRlcyB0byB1c2UgdGhpcz8KClRoYW5r
cyEKR2lsYWQKCgo+Cj4gU2lnbmVkLW9mZi1ieTogVGVybyBLcmlzdG8gPHQta3Jpc3RvQHRpLmNv
bT4KPiAtLS0KPiAgaW5jbHVkZS9saW51eC9jcnlwdG8uaCB8IDkgKysrKysrKystCj4gIDEgZmls
ZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPgo+IGRpZmYgLS1naXQg
YS9pbmNsdWRlL2xpbnV4L2NyeXB0by5oIGIvaW5jbHVkZS9saW51eC9jcnlwdG8uaAo+IGluZGV4
IDE5ZWEzYTM3MWQ3Yi4uYjhmMGU1YzNjYzBjIDEwMDY0NAo+IC0tLSBhL2luY2x1ZGUvbGludXgv
Y3J5cHRvLmgKPiArKysgYi9pbmNsdWRlL2xpbnV4L2NyeXB0by5oCj4gQEAgLTY4Miw4ICs2ODIs
MTUgQEAgc3RhdGljIGlubGluZSBpbnQgY3J5cHRvX3dhaXRfcmVxKGludCBlcnIsIHN0cnVjdCBj
cnlwdG9fd2FpdCAqd2FpdCkKPiAgICAgICAgIHN3aXRjaCAoZXJyKSB7Cj4gICAgICAgICBjYXNl
IC1FSU5QUk9HUkVTUzoKPiAgICAgICAgIGNhc2UgLUVCVVNZOgo+IC0gICAgICAgICAgICAgICB3
YWl0X2Zvcl9jb21wbGV0aW9uKCZ3YWl0LT5jb21wbGV0aW9uKTsKPiArICAgICAgICAgICAgICAg
ZXJyID0gd2FpdF9mb3JfY29tcGxldGlvbl90aW1lb3V0KCZ3YWl0LT5jb21wbGV0aW9uLAo+ICsg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgbXNlY3NfdG9f
amlmZmllcygxMDAwKSk7Cj4gICAgICAgICAgICAgICAgIHJlaW5pdF9jb21wbGV0aW9uKCZ3YWl0
LT5jb21wbGV0aW9uKTsKPiArICAgICAgICAgICAgICAgaWYgKCFlcnIpIHsKPiArICAgICAgICAg
ICAgICAgICAgICAgICBwcl9lcnIoIiVzOiB0aW1lb3V0IGZvciAlcFxuIiwgX19mdW5jX18sIHdh
aXQpOwo+ICsgICAgICAgICAgICAgICAgICAgICAgIGVyciA9IC1FVElNRURPVVQ7Cj4gKyAgICAg
ICAgICAgICAgICAgICAgICAgYnJlYWs7Cj4gKyAgICAgICAgICAgICAgIH0KPiArCj4gICAgICAg
ICAgICAgICAgIGVyciA9IHdhaXQtPmVycjsKPiAgICAgICAgICAgICAgICAgYnJlYWs7Cj4gICAg
ICAgICB9Owo+IC0tCj4gMi4xNy4xCj4KPiAtLQo+IFRleGFzIEluc3RydW1lbnRzIEZpbmxhbmQg
T3ksIFBvcmtrYWxhbmthdHUgMjIsIDAwMTgwIEhlbHNpbmtpLiBZLXR1bm51cy9CdXNpbmVzcyBJ
RDogMDYxNTUyMS00LiBLb3RpcGFpa2thL0RvbWljaWxlOiBIZWxzaW5raQoKCgotLQpHaWxhZCBC
ZW4tWW9zc2VmCkNoaWVmIENvZmZlZSBEcmlua2VyCgp2YWx1ZXMgb2YgzrIgd2lsbCBnaXZlIHJp
c2UgdG8gZG9tIQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
