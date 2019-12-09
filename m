Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C2EF1173EA
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 19:18:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BCiDIKGzFNhsCb7MWOiSHXJurIgm+Oa6++MdNyn+vGM=; b=bfBuC0d624Bpti
	8M5pMnvMqturDzflhpjJEhrBXFR7xrv3b5D9nG2l67mwqUvGBUCx71cxiCQDdbDtWyz+MtliYr5ye
	3XhKAuzO+oc/9nHQUnw9cWG3U4tS/u4To/7NLtEZy1jS9L3A5ghtiODAvOrKQJUo/n/PMcrrLn7id
	xcfy+7/rU7RUYiXmvBG7K/5BRwYuyOQXUlTmkXbzz4wrhcN2lBy7xV8WgVMFgJvmYw7M26tTF9Oir
	df9ovEcOOxxoZC0Ul7wL26/hC5TcNRCDEOnaUC7yNgDlQrOhLCa7ZoihK1WSjBgsZufxlVHWvbL38
	QhG/U60j9Pcs64F8sCXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieNbw-0003Ev-Qa; Mon, 09 Dec 2019 18:18:20 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieNbj-0003B0-9L; Mon, 09 Dec 2019 18:18:08 +0000
Received: by mail-ed1-x541.google.com with SMTP id cx19so13569663edb.1;
 Mon, 09 Dec 2019 10:18:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=AFyCxxkfXo1dBcwr25NUxxquASFmJwWK9k5RsCZyC5g=;
 b=mnZtm2y0JW96QmGT3FAi7at9G6DYVmJvOg/5l4pCMUlq6PiZIG9/rJ2JePvvc6JV6+
 Eb67uyu/dgJyWAWrZ2Tj5sSRCdOCluGz2DQmbR2kOwrMOd8/0sVJaXMrV0u49hnVn1LS
 SSg9sgg5sU4PfUY89ZCmhIM8nzFgctbU52+ZGSzRO/Pnx/jAODqvIvqHr2qppMGi7UGQ
 EhoskHnbikcMDECiRjiKfgoQ6Db3C1T+nSyvQpUvq2gMdzxPKRfM0mDIssRBReMgWnrT
 bJH77gHQgrTJfy3M0l4avGBbwFi7Gg0SusD88+nc82mVFePJXJhfPiS08qdvMV6F2D+4
 L5jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=AFyCxxkfXo1dBcwr25NUxxquASFmJwWK9k5RsCZyC5g=;
 b=O+y6c3/36UV7FctcEsKPpz6RPiNqRUa1cnoF8dnt0skmey88CMXmAs0GNe7h0Trix4
 vOcsAIzOqQj6SRq6Lw3/lwY3XVs7uwBY3CgDvcl7AY/ayFss1wYlnn01ssDhllrHOnR5
 SbAJpqJ2aRSZK6DkeADfxSnnlcter7VMuSvo0TKcdx3qmn75llRm/OGC7BhonSMwCFCW
 ITjoHtFARNo9E/IZbpPzqO8ztiE0hjvOG70OVKrcEOuInjwPHdcZm74JgOFcYulPirxe
 HPZ/XKYfoP+TB6nIUyOpxiAhqSTw1KJWgwyCwXhjkl2BM8Usvcice1VM08nBzgMcG+eh
 aCxQ==
X-Gm-Message-State: APjAAAXfAKlq8nkthPqdbw3m2px9zDVqoNLOB9fl8PhOLWoK4Ya0NC5f
 mLM+VHNQW4eLkKLoj1LxuDTqzDBL
X-Google-Smtp-Source: APXvYqzx2fN2q7b10f+rTW708NsqbiJG9wu/sAQhrIXtqpblLXG5dyi/9yB9RMHWPWpTpUcXqdJ/Ow==
X-Received: by 2002:a05:6402:486:: with SMTP id
 k6mr27263588edv.263.1575915481928; 
 Mon, 09 Dec 2019 10:18:01 -0800 (PST)
Received: from [10.67.50.53] ([192.19.223.252])
 by smtp.googlemail.com with ESMTPSA id c24sm12194eds.40.2019.12.09.10.17.58
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 09 Dec 2019 10:18:01 -0800 (PST)
Subject: Re: [PATCH] ARM: dts: bcm283x: Fix critical trip point
To: Lukas Wunner <lukas@wunner.de>, Stefan Wahren <wahrenst@gmx.net>
References: <1575117073-5990-1-git-send-email-wahrenst@gmx.net>
 <20191130135403.jmuuuy3lf5l3enti@wunner.de>
From: Florian Fainelli <f.fainelli@gmail.com>
Autocrypt: addr=f.fainelli@gmail.com; prefer-encrypt=mutual; keydata=
 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
 G10n8gCguORqNGMsVRxrlLs7/himep7MrCc=
Message-ID: <899ae14b-28d0-0982-cbdf-baf4f1e978fe@gmail.com>
Date: Mon, 9 Dec 2019 10:17:57 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191130135403.jmuuuy3lf5l3enti@wunner.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_101807_350325_43E5BDCE 
X-CRM114-Status: GOOD (  14.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-kernel@lists.infradead.org,
 Florian Fainelli <f.fainelli@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 Ray Jui <rjui@broadcom.com>, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTEvMzAvMTkgNTo1NCBBTSwgTHVrYXMgV3VubmVyIHdyb3RlOgo+IE9uIFNhdCwgTm92IDMw
LCAyMDE5IGF0IDAxOjMxOjEzUE0gKzAxMDAsIFN0ZWZhbiBXYWhyZW4gd3JvdGU6Cj4+IER1cmlu
ZyBkZWZpbml0aW9uIG9mIHRoZSBDUFUgdGhlcm1hbCB6b25lIG9mIEJDTTI4M3ggU29DIGZhbWls
eSB0aGVyZSB3YXMKPj4gYSBtaXN1bmRlcnN0YW5kaW5nIG9mIHRoZSBtZWFuaW5nICJjcml0aWNp
YWwgdHJpcCBwb2ludCIgYW5kIHRoZSB0aGVybWFsCj4+IHRocm90dGxpbmcgcmFuZ2Ugb2YgdGhl
IFZpZGVvQ29yZSBmaXJtd2FyZS4gVGhlIGxhdHRlciBvbmUgdGFrZXMgZWZmZWN0Cj4+IHdoZW4g
dGhlIGNvcmUgdGVtcGVyYXR1cmUgaXMgYmV0d2VlbiA4MCBhbmQgODUgZGVncmVlIGNlbHNpdXMu
IFNvIHRoZQo+PiBjdXJyZW50IGNyaXRpY2FsIHRyaXAgcG9pbnQgZG9lc24ndCBtYWtlIHNlbnNl
LCBiZWNhdXNlIHRoZQo+PiB0aGVybWFsIHNodXRkb3duIGFwcGVhcnMgYmVmb3JlIHRoZSBmaXJt
d2FyZSBoYXMgYSBjaGFuY2UgdG8gdGhyb3R0bGUgdGhlCj4+IEFSTSBjb3JlKHMpLgo+IAo+IEZX
SVcsIHRoZSB0aGVybWFsIHRocm90dGxpbmcgcmFuZ2UgZ29lcyB3YXkgYWJvdmUgODXCsEMuCj4g
Cj4gQXQgS3VuYnVzIHdlJ3ZlIHBlcmZvcm1lZCBudW1lcm91cyB0ZXN0cyBpbiBhIGNsaW1hdGUg
Y2hhbWJlcgo+IGFuZCBteSByZWNvbGxlY3Rpb24gaXMgdGhhdCBhIENNMyBzdGFydHMgdGhyb3R0
bGluZyBhYm92ZSA4MMKwQwo+IHdpdGggdGhlIGZyZXF1ZW5jeSBob3ZlcmluZyBiZXR3ZWVuIDYw
MCBhbmQgMTIwMCBNSHouCj4gCj4gT25jZSA4NcKwQyBpcyByZWFjaGVkLCB0aGUgZnJlcXVlbmN5
IGlzIGZpeGVkIGF0IDYwMCBNSHouCj4gCj4gQnV0IHRoZXJlIGEgYWRkaXRpb25hbCB0cmlwcGlu
ZyBwb2ludHMgYWJvdmUgdGhhdCB3aGVuIHRoZSBmcmVxdWVuY3kKPiBnZXRzIGZ1cnRoZXIgcmVk
dWNlZCB0byA0MDAgTUh6IGFuZCBsYXRlciAzMDAgTUh6LgoKRG9lcyB0aGF0IG1lYW4gdGhhdCB5
b3UgYXJlIG9rYXkgd2l0aCA5MMKwQyBoZXJlLCBvciB3b3VsZCB5b3UgcmF0aGVyIHNlZQp0aGlz
IGJlIGNoYW5nZSB0byA4NcKwQz8KLS0gCkZsb3JpYW4KCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
