Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B357E836F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 09:43:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6+EmX+qIWSUd9y14cHx1xzCmBxVKHCbek1OsXeywwx4=; b=A/KnIGWBKmSyYk
	59HMskmRPKS3nFOHr3gB4i/ne7sdhkNjz1NwiCmtQsRtveNEiKBLzYAzJ8U00Xz5XveeC8pfimNvM
	0462fckeW8Xc9kZ8RFI0AjK222J0dFW3djK2X/y3U6u78r+9Nr/glngQxnjenE5dx/H/YKehuXG7q
	0IGAX19Wl2fEgMQSiWwMoS7f647o/6qf55zIGw25LJzHCHHaFA+f8OAtB85z6n+R0MBv9fWSKIIrB
	qvDTWFXio3ZerrcZGvox5DMU8hnPPrg8D/Yi28oRdeb4L1f5FslII0rFy5+Om7lq/e9KDCSJsyr/y
	aaPdSBmVf7LF0NhZYWUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPN6P-0002Ct-Cl; Tue, 29 Oct 2019 08:43:45 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPN6D-0002B7-HG
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 08:43:34 +0000
Received: by mail-lj1-x244.google.com with SMTP id c4so14278110lja.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 01:43:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=HGXd6rlxFLbtpjrAQ8G1Qtj9aAnpBTx6NO8SjG7PtjI=;
 b=RB8kpGegZFDbX4ehO3+DnkUXso3PSM4ypigva4bxla2UhzbfYW3VFanbaz6VAqTIp9
 vC4VW/N/DNc5sYKbDVzBAZWHMwSNqKbSozM7z9NZGI9mkDa0OXo0Om0mCpyDwNoaV8lk
 b3mRrhW7uAmiDR3MvGYepqftbS6Qixnz1xrt0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=HGXd6rlxFLbtpjrAQ8G1Qtj9aAnpBTx6NO8SjG7PtjI=;
 b=QN55J/QqAEAfyhkYDq3bzOZMJ4lpY8QTPaxAMDIRO62dBMCL8qdHWOQB7/U79tKhZX
 VIYgG0tiGzb/sImS7xibvzFhKx5D7GCEKCBeZotz1k62F47KbGQkrK0RzxO10x/PL6kt
 hAzraRZKywi+2IoLTdGD4UhPdMhDHye5XhjOYRHXkVQNWWXlM/MAYQCnV1TE4N8sU/6b
 H4KqWY2vorUbtSZV4efp4VvBvDkNhYACnmuDzk7MRoxj8b0V14cQSmYWyC5r2U7oKAoh
 Nicqn1G/lUh6NQF6I7yGxjo2gTaNuieXaA8hxVPjj7ug+/78K3n1PCVV6sRBQ/qrn+sA
 jAvw==
X-Gm-Message-State: APjAAAXBwJCYM1mpdj4mIA0MURTZIO5vqOFU9m2UfOfaV+WPVhnvytFF
 VBx74adbdURpeoEHRLOM1SmN7Q==
X-Google-Smtp-Source: APXvYqzEDMxdj01ErGn8mE4rCnBBCxTZ6HkGNRiI9Uh8UyBsOyPj0DTCwoKDupc4z5w1cSudjzX3Qg==
X-Received: by 2002:a2e:4751:: with SMTP id u78mr1617787lja.210.1572338611332; 
 Tue, 29 Oct 2019 01:43:31 -0700 (PDT)
Received: from [172.16.11.28] ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id 77sm13198495lfj.41.2019.10.29.01.43.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 29 Oct 2019 01:43:30 -0700 (PDT)
Subject: ppc: inlining iowrite32be and friends (was: Re: [PATCH v2 03/23] soc:
 fsl: qe: avoid ppc-specific io accessors)
To: Christophe Leroy <christophe.leroy@c-s.fr>,
 Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>
References: <20191018125234.21825-1-linux@rasmusvillemoes.dk>
 <20191025124058.22580-1-linux@rasmusvillemoes.dk>
 <20191025124058.22580-4-linux@rasmusvillemoes.dk>
 <886d5218-6d6b-824c-3ab9-63aafe41ff40@c-s.fr>
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Message-ID: <02a8a449-e421-f70f-4bf9-50a94324834b@rasmusvillemoes.dk>
Date: Tue, 29 Oct 2019 09:43:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <886d5218-6d6b-824c-3ab9-63aafe41ff40@c-s.fr>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_014333_583452_95918742 
X-CRM114-Status: GOOD (  15.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Michael Ellerman <mpe@ellerman.id.au>, linux-kernel@vger.kernel.org,
 Scott Wood <oss@buserror.net>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjkvMTAvMjAxOSAwOC40MywgQ2hyaXN0b3BoZSBMZXJveSB3cm90ZToKPiAKPiAKPiBMZSAy
NS8xMC8yMDE5IMOgIDE0OjQwLCBSYXNtdXMgVmlsbGVtb2VzIGEgw6ljcml0wqA6Cj4+IEluIHBy
ZXBhcmF0aW9uIGZvciBhbGxvd2luZyB0byBidWlsZCBRRSBzdXBwb3J0IGZvciBhcmNoaXRlY3R1
cmVzCj4+IG90aGVyIHRoYW4gUFBDLCByZXBsYWNlIHRoZSBwcGMtc3BlY2lmaWMgaW8gYWNjZXNz
b3JzLiBEb25lIHZpYQo+Pgo+PiAkIHNwYXRjaCAtLXNwLWZpbGUgaW8uY29jY2kgLS1pbi1wbGFj
ZSBkcml2ZXJzL3NvYy9mc2wvcWUvCj4+Cgo+IEFzIGRpc2N1c3NlZCBhbHJlYWR5LCB0aGlzIHBh
dGNoIGNoYW5nZXMgaW8gYWNjZXNvcnMgZnJvbSBpbmxpbmUgdG8KPiBvdXRsaW5lLCB0aGlzIGhh
cyBhIHBlcmZvcm1hbmNlIGltcGFjdCBvbiBwb3dlcnBjMzIgbGlrZSA4M3h4Lgo+IAo+IENvdWxk
IHlvdSBwbGVhc2UgaW5jbHVkZSBpbiB5b3VyIHNlcmllcyBiZWZvcmUgdGhpcyBwYXRjaCBhIHBh
dGNoIHRvCj4gY2hhbmdlIGdlbmVyaWMgaW8gYWNjZXNzb3JzIHRvIGlubGluZSBvbiBwb3dlcnBj
ID8KCldlbGwsIGl0J3MgY29tcGxpY2F0ZWQuIEkgd2FzIGhvcGluZyBzb21lb25lIGNvdWxkIGV4
cGxhaW4gd2h5IHRob3NlIGFyZQpPT0wgaW4gdGhlIGZpcnN0IHBsYWNlLiBUaGUgaGlzdG9yeSBv
ZiBhcmNoL3Bvd2VycGMva2VybmVsL2lvbWFwLmMgYW5kCnRoZSBtYWtlZmlsZSBmcmFnbWVudCBp
bmNsdWRpbmcgaXQgaXMgYSBiaXQgbWVzc3kgLSBmaXJzdCBvZiBhbGwsIHRoZQpmaWxlIGl0c2Vs
ZiB0YWxrcyBhYm91dCAicHBjNjQgaW1wbGVtZW50YXRpb24iIGJ1dCBpcyBvYnZpb3VzbHkgdXNl
ZCBmb3IKYWxsIHBwYzMyICh3aGlsZSB0aGUgcHBjNjQgcGxhdGZvcm1zIHRoYXQgc2V0IFBQQ19J
TkRJUkVDVF9QSU8gYWxzbyBnZXQKR0VORVJJQ19JT01BUCwgaS5lLiBsaWIvaW9tYXAuYykuCgpT
bywgd2hhdCBJIHdhbnRlZCB0byBkbyB3YXMgdG8gbWFrZSB0aGUgYWNjZXNzb3JzIGlubGluZSB3
aGVuCiFQUENfSU5ESVJFQ1RfUElPICYmICFQUENfSU5ESVJFQ1RfTU1JTy4gQnV0IHRoZW4gSSBu
ZWVkIHRvIGF2b2lkCmluY2x1ZGluZyBhc20tZ2VuZXJpYy9pb21hcC5oLCBiZWNhdXNlIHRoYXQg
ZGVjbGFyZXMgdGhlc2UgYXMgZXh0ZXJuLgpPVE9ILCBJIHRoaW5rIEkgZG8gbmVlZCBzb21lIG9m
IHRoZSBkZWNsYXJhdGlvbnMgZnJvbSB0aGF0IGZpbGUsIGUuZy4gYXQKbGVhc3QgcGNpX2lvdW5t
YXAsIGFuZCBwZXJoYXBzIGFsc28gdGhlICpfcmVwIHZlcnNpb25zLCB1bmxlc3MgdGhleQpzaG91
bGQgYWxzbyBiZSBpbmxpbmVkLgoKSSdtIGhhcHB5IHRvIGdpdmUgaXQgYSB0cnksIGJ1dCBJIHRo
aW5rIHRoYXQgYmVsb25ncyBpbiBhIHNlcGFyYXRlCnNlcmllcy4gVGhlIGZpcnN0IGZldyBhdHRl
bXB0cyBhcmUgYWxtb3N0IGNlcnRhaW4gdG8gZ2VuZXJhdGUgc29tZSAwZGF5CnJlcG9ydHMuCgpR
dWVzdGlvbiBmb3IgcG93ZXJwYyBtYWludGFpbmVyczogSXMgdGhlcmUgYSBmdW5kYW1lbnRhbCBy
ZWFzb24KaW93cml0ZTMyYmUgYW5kIGZyaWVuZHMgYXJlIG91dC1vZi1saW5lIG9uIFBQQzMyICht
b3JlIGdlbmVyYWxseSwgdGhlClBQQyBwbGF0Zm9ybXMgdGhhdCBzZXQgbmVpdGhlciBQUENfSU5E
SVJFQ1RfUElPIG9yIFBQQ19JTkRJUkVDVF9NTUlPKT8KSWYgc28sIHRoZXJlJ3Mgbm8gcG9pbnQg
dHJ5aW5nIHRvIG1ha2UgdGhlbSBpbmxpbmUsIGFuZCBJJ2QgaGF2ZSB0bwphZGRyZXNzIENocmlz
dG9waGUncyBjb25jZXJuIGJ5IGludHJvZHVjaW5nIHByaXZhdGUgcWVfaW93cml0ZTMyYmUoKQpl
dGMuIHdyYXBwZXJzLgoKVGhhbmtzLApSYXNtdXMKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
