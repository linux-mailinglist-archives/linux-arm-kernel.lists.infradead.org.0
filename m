Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 406029A15D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 22:45:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LDIOXD1TMknBFzqq+y2fSiJftIJ7zAmo3HnBnY/l7uw=; b=BLMwBmUPZxktPSLn8yNMVR4UZ
	XCNQteS+8U+KGShmC7wr7BMEShGpkesCYdTwZ+BN5nP8cAhkbWpG1iv65DKEi857HJvct/tG/bo9/
	6/MeKDsZ+7dw7EDO59M0h8hlNY1NwKPRinYAyVPyjROoTD4Ft/Sx7Uhk/MbFOltvU5CvxJk/1NDan
	nQw00BM9+tCnuO+LvTjm94MCjggJ04WxtW86RIXUwa55ZX2tVNAxTot5jpCMoKXUoN9Xio876ovA8
	oz5ASBb9SUqa6SY/qRlEVXWckLxbfGkU0xMqlJ63ftRKT+oNt95OHHrH4EuMmqzvQhf1AXPzjpBAi
	QcD62VDJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0txK-0002Mk-FY; Thu, 22 Aug 2019 20:45:14 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0txA-0001bm-ME
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 20:45:06 +0000
Received: by mail-wr1-x443.google.com with SMTP id g17so6649759wrr.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 22 Aug 2019 13:45:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=z38L1LbtkDwqSlnb2AxRpEWGcGzkq1fhYXo9J8r1ADY=;
 b=Pqw3Tx0tuUJ4rbh9hmqJEpjEUNIRzpD0VB8ScZaYDX66uXWfFYdvxdZuGoyyEkQqvQ
 HRs7xZrlXQJj5mSmolOcCQMCdVqFUHUqmZ9hcmksP+L42EyTfkvJeQuuH2WJ9+OPgZDb
 NhX49pAb3aKmtxrWYRvqowak0m8raH5HvI6QbVsmKKtO4AA6P6rN3yU0zZfxifgS3qNf
 fbkvmMRKGnlMUDOG9skav/H7zvnxP3siQsR+ejhjbY4a16FWvvJMOsK+PyAI2Y8ib4rZ
 SRgCuo6IZAWt+B5KX2AO0Q1aBV9kcDZCQ7hcuIWRPiMTHyiLhIOitcP25aQGrGG2vngS
 V16Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=z38L1LbtkDwqSlnb2AxRpEWGcGzkq1fhYXo9J8r1ADY=;
 b=gAkX48SAO6nhudbpnOlserBf7bPZgqW1rBXwNvKAjNI1UwoGhnKlkWkCRPYhjNwUXc
 scIZR5cYSxXnqxBtgmtxPZy4+39FWUWY7PasEPVpSl0wHXZLEFn1TEafNfH73sNcTT3Z
 X5xnSxlsf0ppnCwdrdL5a97LNZrG0TEwUCOdBa0oY3gD34yUpr86OkSiCQN1ZsI3Uq/g
 5CaFn8dH5WYe2C7b6gZYyW6H4vo9yOEbHLWOJEoJSgcWIlKMpwZ2OWX/mzdCY9c54E2e
 COiUXqYwV3/x/NhRbVXNg2rF1QmLwtxdzEmiSdx9ge7/gcznGd2j09xiMvAsiMb0R+/T
 RREA==
X-Gm-Message-State: APjAAAUK92BskzAnNz+5Ckq4rgjH7iMv6Ss4cuiN2KU7nJ+uskyx8B+f
 LmPv+EwT3Gpp6BaI963FKjY=
X-Google-Smtp-Source: APXvYqzy4xhMTMOPearBfcoIurmKVvT1DSEF8CCco3VRkPpa4X5bcW062QVfakLsNqLXfVgDJryJ3A==
X-Received: by 2002:a5d:6b84:: with SMTP id n4mr940661wrx.118.1566506703097;
 Thu, 22 Aug 2019 13:45:03 -0700 (PDT)
Received: from [192.168.1.67]
 (host81-157-241-155.range81-157.btcentralplus.com. [81.157.241.155])
 by smtp.gmail.com with ESMTPSA id f197sm1373147wme.22.2019.08.22.13.45.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 22 Aug 2019 13:45:02 -0700 (PDT)
Subject: Re: [RFC v4 07/18] objtool: Introduce INSN_UNKNOWN type
To: Josh Poimboeuf <jpoimboe@redhat.com>, Raphael Gault <raphael.gault@arm.com>
References: <20190816122403.14994-1-raphael.gault@arm.com>
 <20190816122403.14994-8-raphael.gault@arm.com>
 <20190822200406.jc3yf77pomxxwep6@treble>
From: Julien <julien.thierry.kdev@gmail.com>
Message-ID: <3c4e3227-eeb3-371a-d015-a0e0e60e5332@gmail.com>
Date: Thu, 22 Aug 2019 21:45:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.2
MIME-Version: 1.0
In-Reply-To: <20190822200406.jc3yf77pomxxwep6@treble>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_134504_763073_012A95A9 
X-CRM114-Status: GOOD (  17.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (julien.thierry.kdev[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: raph.gault+kdev@gmail.com, peterz@infradead.org, catalin.marinas@arm.com,
 will.deacon@arm.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSm9zaCwKCk9uIDIyLzA4LzE5IDIxOjA0LCBKb3NoIFBvaW1ib2V1ZiB3cm90ZToKPiBPbiBG
cmksIEF1ZyAxNiwgMjAxOSBhdCAwMToyMzo1MlBNICswMTAwLCBSYXBoYWVsIEdhdWx0IHdyb3Rl
Ogo+PiBPbiBhcm02NCBzb21lIG9iamVjdCBmaWxlcyBjb250YWluIGRhdGEgc3RvcmVkIGluIHRo
ZSAudGV4dCBzZWN0aW9uLgo+PiBUaGlzIGRhdGEgaXMgaW50ZXJwcmV0ZWQgYnkgb2JqdG9vbCBh
cyBpbnN0cnVjdGlvbiBidXQgY2FuJ3QgYmUKPj4gaWRlbnRpZmllZCBhcyBhIHZhbGlkIG9uZS4g
SW4gb3JkZXIgdG8ga2VlcCBhbmFseXNpbmcgdGhvc2UgZmlsZXMgd2UKPj4gaW50cm9kdWNlIElO
U05fVU5LTk9XTiB0eXBlLiBUaGUgInVua25vd24gaW5zdHJ1Y3Rpb24iIHdhcm5pbmcgd2lsbCB0
aHVzCj4+IG9ubHkgYmUgcmFpc2VkIGlmIHN1Y2ggaW5zdHJ1Y3Rpb25zIGFyZSB1bmNvdW50ZXJl
ZCB3aGlsZSB2YWxpZGF0aW5nIGFuCj4+IGV4ZWN1dGlvbiBicmFuY2guCj4+Cj4+IFRoaXMgY2hh
bmdlIGRvZXNuJ3QgaW1wYWN0IHRoZSB4ODYgZGVjb2RpbmcgbG9naWMgc2luY2UgMCBpcyBzdGls
bCB1c2VkCj4+IGFzIGEgd2F5IHRvIHNwZWNpZnkgYW4gdW5rbm93biB0eXBlLCByYWlzaW5nIHRo
ZSAidW5rbm93biBpbnN0cnVjdGlvbiIKPj4gd2FybmluZyBkdXJpbmcgdGhlIGRlY29kaW5nIHBo
YXNlIHN0aWxsLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBSYXBoYWVsIEdhdWx0IDxyYXBoYWVsLmdh
dWx0QGFybS5jb20+Cj4gCj4gSXMgdGhlcmUgYSByZWFzb24gc3VjaCBkYXRhIGNhbid0IGJlIG1v
dmVkIHRvIC5yb2RhdGE/ICBUaGF0IHdvdWxkIHNlZW0KPiBsaWtlIHRoZSBwcm9wZXIgZml4Lgo+
IAoKUmFwaGHDq2wgY2FuIGNvbmZpcm0sIGlmIEkgcmVtZW1iZXIgY29ycmVjdGx5LCB0aGF0IGlz
c3VlIHdhcyBlbmNvdW50ZXJlZCAKb24gYXNzZW1ibHkgZmlsZXMgaW1wbGVtZW50aW5nIGNyeXB0
byBhbGdvcml0aG1zIHdlcmUgc29tZSAKd29yZHMvZG91YmxlLXdvcmRzIG9mIGRhdGEgd2VyZSBp
biB0aGUgbWlkZGxlIG9mIHRoZSAudGV4dC4gSSB0aGluayBpdCAKaXMgZG9uZSB0aGlzIHdheSB0
byBtYWtlIHN1cmUgdGhlIGRhdGEgY2FuIGJlIGxvYWRlZCBpbiBhIHNpbmdsZSAKaW5zdHJ1Y3Rp
b24uIFNvIG1vdmluZyBpdCB0byBhbm90aGVyIHNlY3Rpb24gY291bGQgaW1wYWN0IHRoZSBjcnlw
dG8gCnBlcmZvcm1hbmNlIGRlcGVuZGluZyBvbiB0aGUgcmVsb2NhdGlvbnMuCgpUaGF0IHdhcyBt
eSB1bmRlcnN0YW5kaW5nIGF0IGxlYXN0LgoKQ2hlZXJzLAoKLS0gCkp1bGllbiBUaGllcnJ5Cgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
