Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EB374B082
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 05:48:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:MIME-Version:In-Reply-To:
	References:To:Subject:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LKD5RshFD30gm8sN5SRFtPTBb9o2qNZqoEaDKAZtTnk=; b=BTuTmM9mUgFdGH
	z39pbJzJf0BWzDPxGT9KPWSBlLmmTaRNL2YVVpmNi1Sy8Vvg2dtcXyYSgGHoyGJXGC11tVwAyVhdW
	QuiJsDtQtMoo3GVVDhVaMfn3oaDA9atEFZfHe6JeZUUiJcDIjDZCF5d4gzDoo5xZakyTOsLgWd9xz
	2DQuC5gTRYXGzX6x1DDB9rPgSdhVBmZaQJkZkamd75gZKTSmCQB6IjNJK6QNPvjucn2JFJZDpq4VG
	hU7eeDmsCR7mdwz0L4/JPMSh/4IGwPMy1ZnkZ2Q86RcVjNmcmnjE9tiuomCOx/bmZ3Wy/Rvq23Lsx
	YXLTyRQgv50HER6YVXSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdRaQ-0001NM-UC; Wed, 19 Jun 2019 03:48:38 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdRaD-0001Ma-VU
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 03:48:27 +0000
Received: by mail-pg1-x543.google.com with SMTP id l19so8822033pgh.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 20:48:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:subject:to:cc:references:in-reply-to:mime-version
 :user-agent:message-id:content-transfer-encoding;
 bh=X6XTYsovFVueps9eDYXkESbdVwlOJdDMq7uOuCJqwXc=;
 b=tC1fzbkLO4VEb2uG5tpdzpdcGioSEyum/AxMt7rl3u+3W+pwVWz0ir6DqBvt7Sx/pi
 1WlaAg652y+gLKabGhhaJdZC5Xkwvz6PbaHrbWWyz/xljVyoCpISGt95eX7YZTobS1J6
 hwD6aFs6efu0dM1kesEHSloRI9DM5Ny9A+zFW3syvgakwqh6mAX9NzBVCLWSYe6nHfv3
 3xrcez+XQj8IXjVXr74e0U1ufVVsSBKn0K8lBSZjsUxEHztCH5pfIEbRUm8GFCDuTKes
 ZnxHyzQ92i2RQOPqavK4WLESBq1uTY1GCjHjaQDK682QCK2m2V311Qtx8nHh8LNJW9VG
 0PBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:subject:to:cc:references:in-reply-to
 :mime-version:user-agent:message-id:content-transfer-encoding;
 bh=X6XTYsovFVueps9eDYXkESbdVwlOJdDMq7uOuCJqwXc=;
 b=pRRfP18xXOEL00ns2xzw3ZFVNl9YfMkiur6cPaLVzfyvtDqS+OM8MIRdU7Xc/arB4C
 AWEi87YncxXAmSlc2rIJ68M8VdH/YIcmJkt9V9dKuuLOU44xK/oDdKqKpQGMM0C+CsYF
 o1ZiIzLh4Bl3QuA07jHHWsQEB58kdSvAJie42IAX/ObfhQKg+QQA8gzQBa0YOBbCgHtP
 2nCTW1F02cr7aJJDcpcRCBw17uoRTGM9EBs8rNgjRw2hjTIemxHUDRYPvXFhaZft9cLF
 YTOVyljkSpF4O6gOZloQ4mi9AkJAyKG/4Ch6sPPREX0jam2T8GnJUDsMJfgV+gRzWBU8
 9dHw==
X-Gm-Message-State: APjAAAVWQrwPwlCkRnAXucXW6nmvqIIIVyoPK85wsRj81WBk0Fli5oVh
 07DkBh1SNhSJvZzTM0J9G/c=
X-Google-Smtp-Source: APXvYqxdJiQO254qpFiGA9nxIIwq5CyEWTUc2NnUWtayrZavFfK006a2p6VEwiUzEdlEmOggvyLlnA==
X-Received: by 2002:a63:2b57:: with SMTP id r84mr378763pgr.282.1560916105203; 
 Tue, 18 Jun 2019 20:48:25 -0700 (PDT)
Received: from localhost (193-116-92-108.tpgi.com.au. [193.116.92.108])
 by smtp.gmail.com with ESMTPSA id s15sm20952137pfd.183.2019.06.18.20.48.23
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 18 Jun 2019 20:48:24 -0700 (PDT)
Date: Wed, 19 Jun 2019 13:43:19 +1000
From: Nicholas Piggin <npiggin@gmail.com>
Subject: Re: [PATCH 1/4] mm: Move ioremap page table mapping function to mm/
To: Christophe Leroy <christophe.leroy@c-s.fr>, linux-mm@kvack.org
References: <20190610043838.27916-1-npiggin@gmail.com>
 <86991f76-2101-8087-37db-d939d5d744fa@c-s.fr>
In-Reply-To: <86991f76-2101-8087-37db-d939d5d744fa@c-s.fr>
MIME-Version: 1.0
User-Agent: astroid/0.14.0 (https://github.com/astroidmail/astroid)
Message-Id: <1560915576.aqf69c3nf8.astroid@bobo.none>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_204826_016641_16E75F9F 
X-CRM114-Status: GOOD (  12.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (npiggin[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Q2hyaXN0b3BoZSBMZXJveSdzIG9uIEp1bmUgMTEsIDIwMTkgMzoyNCBwbToKPiAKPiAKPiBMZSAx
MC8wNi8yMDE5IMOgIDA2OjM4LCBOaWNob2xhcyBQaWdnaW4gYSDDqWNyaXTCoDoKPj4gaW9yZW1h
cF9wYWdlX3JhbmdlIGlzIGEgZ2VuZXJpYyBmdW5jdGlvbiB0byBjcmVhdGUgYSBrZXJuZWwgdmly
dHVhbAo+PiBtYXBwaW5nLCBtb3ZlIGl0IHRvIG1tL3ZtYWxsb2MuYyBhbmQgcmVuYW1lIGl0IHZt
YXBfcmFuZ2UuCj4+IAo+PiBGb3IgY2xhcml0eSB3aXRoIHRoaXMgbW92ZSwgYWxzbzoKPj4gLSBS
ZW5hbWUgdnVubWFwX3BhZ2VfcmFuZ2UgKHZtYXBfcmFuZ2UncyBpbnZlcnNlKSB0byB2dW5tYXBf
cmFuZ2UuCj4+IC0gUmVuYW1lIHZtYXBfcGFnZV9yYW5nZSAod2hpY2ggdGFrZXMgYSBwYWdlIGFy
cmF5KSB0byB2bWFwX3BhZ2VzLgo+IAo+IE1heWJlIGl0IHdvdWxkIGJlIGVhc2llciB0byBmb2xs
b3cgdGhlIGNoYW5nZSBpZiB0aGUgbmFtZSBjaGFuZ2Ugd2FzIAo+IGRvbmUgaW4gYW5vdGhlciBw
YXRjaCB0aGFuIHRoZSBtb3ZlLgoKSSBjb3VsZCBkbyB0aGF0LgoKPj4gU2lnbmVkLW9mZi1ieTog
TmljaG9sYXMgUGlnZ2luIDxucGlnZ2luQGdtYWlsLmNvbT4KPj4gLS0tCj4+IAo+PiBGaXhlZCB1
cCB0aGUgYXJtNjQgY29tcGlsZSBlcnJvcnMsIGZpeGVkIGEgZmV3IGJ1Z3MsIGFuZCB0aWRpZWQK
Pj4gdGhpbmdzIHVwIGEgYml0IG1vcmUuCj4+IAo+PiBIYXZlIHRlc3RlZCBwb3dlcnBjIGFuZCB4
ODYgYnV0IG5vdCBhcm02NCwgd291bGQgYXBwcmVjaWF0ZSBhIHJldmlldwo+PiBhbmQgdGVzdCBv
ZiB0aGUgYXJtNjQgcGF0Y2ggaWYgcG9zc2libGUuCj4+IAo+PiAgIGluY2x1ZGUvbGludXgvdm1h
bGxvYy5oIHwgICAzICsKPj4gICBsaWIvaW9yZW1hcC5jICAgICAgICAgICB8IDE3MyArKystLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPj4gICBtbS92bWFsbG9jLmMgICAgICAgICAgICB8IDIy
OCArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKystLS0tCj4+ICAgMyBmaWxlcyBj
aGFuZ2VkLCAyMjkgaW5zZXJ0aW9ucygrKSwgMTc1IGRlbGV0aW9ucygtKQo+PiAKPj4gZGlmZiAt
LWdpdCBhL2luY2x1ZGUvbGludXgvdm1hbGxvYy5oIGIvaW5jbHVkZS9saW51eC92bWFsbG9jLmgK
Pj4gaW5kZXggNTFlMTMxMjQ1Mzc5Li44MTJiZWE1ODY2ZDYgMTAwNjQ0Cj4+IC0tLSBhL2luY2x1
ZGUvbGludXgvdm1hbGxvYy5oCj4+ICsrKyBiL2luY2x1ZGUvbGludXgvdm1hbGxvYy5oCj4+IEBA
IC0xNDcsNiArMTQ3LDkgQEAgZXh0ZXJuIHN0cnVjdCB2bV9zdHJ1Y3QgKmZpbmRfdm1fYXJlYShj
b25zdCB2b2lkICphZGRyKTsKPj4gICBleHRlcm4gaW50IG1hcF92bV9hcmVhKHN0cnVjdCB2bV9z
dHJ1Y3QgKmFyZWEsIHBncHJvdF90IHByb3QsCj4+ICAgCQkJc3RydWN0IHBhZ2UgKipwYWdlcyk7
Cj4+ICAgI2lmZGVmIENPTkZJR19NTVUKPj4gK2V4dGVybiBpbnQgdm1hcF9yYW5nZSh1bnNpZ25l
ZCBsb25nIGFkZHIsCj4+ICsJCSAgICAgICB1bnNpZ25lZCBsb25nIGVuZCwgcGh5c19hZGRyX3Qg
cGh5c19hZGRyLCBwZ3Byb3RfdCBwcm90LAo+PiArCQkgICAgICAgdW5zaWduZWQgaW50IG1heF9w
YWdlX3NoaWZ0KTsKPiAKPiBEcm9wIGV4dGVybiBrZXl3b3JkIGhlcmUuCgpJIGRvbid0IGtub3cg
aWYgSSB3YXMgZ29pbmcgY3JhenkgYnV0IGF0IG9uZSBwb2ludCBJIHdhcyBnZXR0aW5nCmR1cGxp
Y2F0ZSBzeW1ib2wgZXJyb3JzIHRoYXQgd2VyZSBmaXhlZCBieSBhZGRpbmcgZXh0ZXJuIHNvbWV3
aGVyZS4KTWF5YmUgc2xlZXAgZGVwcmF2YXRpb24uIEhvd2V2ZXIuLi4KCj4gQXMgY2hlY2twYXRj
aCB0ZWxscyB5b3UsICdDSEVDSzpBVk9JRF9FWFRFUk5TOiBleHRlcm4gcHJvdG90eXBlcyBzaG91
bGQgCj4gYmUgYXZvaWRlZCBpbiAuaCBmaWxlcycKCkkgcHJlZmVyIHRvIGZvbGxvdyBleGlzdGlu
ZyBzdHlsZSBpbiBzdXJyb3VuZGluZyBjb2RlIGF0IHRoZSBleHBlbnNlCm9mIHNvbWUgY2hlY2tw
YXRjaCB3YXJuaW5ncy4gSWYgc29tZWJvZHkgbGF0ZXIgd2FudHMgdG8gImZpeCIgaXQKdGhhdCdz
IGZpbmUuCgpUaGFua3MsCk5pY2sKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
