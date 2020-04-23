Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 881F61B6229
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 19:41:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ogGRxbQqmadPJ/EBuXJyXbNyui1lT7EvwaclZHf03Gs=; b=b+g3yrn3dFsePj
	RjrDMfneSKrgEBY+l5GD5rNagdQOkr+erTRPPfp3h5zvAWFcgGOfrHQyMoqh+Jtiwy7HNRw8d+OCl
	lJNF6eQDImyTF31xddirt2PigrRsKQlHD0VH5HFqxqS0o8YKumR4Pew23WbbgVngaObJCX8sT6+9J
	ql+eTTIFGc5j76NQJ70P9IC1ciIHQZavrPOyFIVIwMvKDCzWgxIXbLNnPF2GKGFRjDcyJxoB1HE4O
	vtllGoA5h+oc/5XEWd3P/5JnUFeiF8Fy4Bk2EnUcgjrWD+mUDvuPIVbKdzLNqCyMBWSn9VBC8QP8G
	ePk0EN3dGfNxDDOYKwEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRfqZ-0006Y8-Hg; Thu, 23 Apr 2020 17:41:11 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRfqP-0006WG-Vn
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 17:41:03 +0000
Received: by mail-wm1-x342.google.com with SMTP id u16so7457031wmc.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 Apr 2020 10:41:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gWv80nzXUhTdWCFgmyjTCUoBOWCYJ0shhaZECz9MPDU=;
 b=NX1C5IscIq8eq/7t7aqC4WMjLMIwy0TYJXkv81hlXtOf7GAgezW8xB3N+PSUNC4nDL
 5PNxuRDBeCtnM/2Xb8IYAkefyXNM9TED4TjytiGbv2wdOMKxNlEL44KXM+rAEBq3tFCw
 EpVcUvYprGVexQv7brmcia+kisIR3akARAx1SFcKsIoVNBjfnULTFrBocFex8JGj7lYJ
 Ra0b7OB5ZIxBvXVs8Od3sSB/I7tD9MrS3y/U8KFGGFS7YJd+4FOD6+FmeQoj5HkeDuBV
 Pv7ag4Mj2hz8C/+5aBe3w+KsQliYhuYkPfZMRWiwT/4HsjaK3JK7ICWbGCOsmNnt9fxR
 ZdDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gWv80nzXUhTdWCFgmyjTCUoBOWCYJ0shhaZECz9MPDU=;
 b=c2W1VQyaZupM2LuUJIM/yUSVAhD68e3PEQ5QZEwxddHozB1Jn2aNILJp7kXvfD8TpY
 dOEXMOHiNmYmXTogV9EfD1GsQ3cdB1wjOohw1kwrQSaGYyayiF59P3KbVmvx4YAWAJ8F
 gOWbTkcnTpsYPCW7fE56lo6UVMI8Q3l6Dd+SNLSFbUOtrXUsBq5mSruywqUZedwIUQ4C
 G2+NuL6+TmJ+4WvBSHot5n55q6na1YjfmZ3SScbPUN5sTuWdDw4vshn7MwYGTFA3roQs
 N2AOYPoH9rbUzOVhAEqXcRypEyszsjr2qPtr5eecYUqWviUBlZ69+YOwHKETX5+fSUP5
 m7ng==
X-Gm-Message-State: AGi0PuYh+MfcWwsnfuCqXESDA5r0OrEEQfACVXydj9/Fa3BjNTAR0sEO
 iWl4yia73xrvn+Q6grHM888=
X-Google-Smtp-Source: APiQypIkxumrWz+ndrMvOJ91zYJzQlX5sVnzAQWpOSbcaM+o3LFMTKXuBlxS10rMdu61zM/gqoUfMQ==
X-Received: by 2002:a1c:a5c8:: with SMTP id o191mr5451325wme.77.1587663660323; 
 Thu, 23 Apr 2020 10:41:00 -0700 (PDT)
Received: from jernej-laptop.localnet (cpe-194-152-20-232.static.triera.net.
 [194.152.20.232])
 by smtp.gmail.com with ESMTPSA id i25sm4471771wml.43.2020.04.23.10.40.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Apr 2020 10:40:58 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Maxime Ripard <mripard@kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-sunxi@googlegroups.com
Subject: Re: [linux-sunxi] [PATCH v2 1/2] media: cedrus: Program output format
 during each run
Date: Thu, 23 Apr 2020 19:40:57 +0200
Message-ID: <2018061.irdbgypaU6@jernej-laptop>
In-Reply-To: <20200422040410.6251-1-samuel@sholland.org>
References: <20200422040410.6251-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_104102_025530_40C255B5 
X-CRM114-Status: GOOD (  10.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jernej.skrabec[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-sunxi@googlegroups.com, samuel@sholland.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RG5lIHNyZWRhLCAyMi4gYXByaWwgMjAyMCBvYiAwNjowNDowOSBDRVNUIGplIFNhbXVlbCBIb2xs
YW5kIG5hcGlzYWwoYSk6Cj4gUHJldmlvdXNseSwgdGhlIG91dHB1dCBmb3JtYXQgd2FzIHByb2dy
YW1tZWQgYXMgcGFydCBvZiB0aGUgaW9jdGwoKQo+IGhhbmRsZXIuIEhvd2V2ZXIsIHRoaXMgaGFz
IHR3byBwcm9ibGVtczoKPiAKPiAgIDEpIElmIHRoZXJlIGFyZSBtdWx0aXBsZSBhY3RpdmUgc3Ry
ZWFtcyB3aXRoIGRpZmZlcmVudCBvdXRwdXQKPiAgICAgIGZvcm1hdHMsIHRoZSBoYXJkd2FyZSB3
aWxsIHVzZSB3aGljaGV2ZXIgZm9ybWF0IHdhcyBzZXQgbGFzdAo+ICAgICAgZm9yIGJvdGggc3Ry
ZWFtcy4gU2ltaWxhcnksIGFuIGlvY3RsKCkgZG9uZSBpbiBhbiBpbmFjdGl2ZQo+ICAgICAgY29u
dGV4dCB3aWxsIHdyb25nbHkgYWZmZWN0IG90aGVyIGFjdGl2ZSBjb250ZXh0cy4KPiAgIDIpIFRo
ZSByZWdpc3RlcnMgYXJlIHdyaXR0ZW4gd2hpbGUgdGhlIGRldmljZSBpcyBub3QgYWN0aXZlbHkK
PiAgICAgIHN0cmVhbWluZy4gVG8gZW5hYmxlIHJ1bnRpbWUgUE0gdGllZCB0byB0aGUgc3RyZWFt
aW5nIHN0YXRlLAo+ICAgICAgYWxsIGhhcmR3YXJlIGFjY2VzcyBuZWVkcyB0byBiZSBtb3ZlZCBp
bnNpZGUgY2VkcnVzX2RldmljZV9ydW4oKS4KPiAKPiBUaGUgY2FsbCB0byBjZWRydXNfZHN0X2Zv
cm1hdF9zZXQoKSBpcyBub3cgcGxhY2VkIGp1c3QgYmVmb3JlIHRoZQo+IGNvZGVjLXNwZWNpZmlj
IGNhbGxiYWNrIHRoYXQgcHJvZ3JhbXMgdGhlIGhhcmR3YXJlLgo+IAo+IEZpeGVzOiA1MGU3NjE1
MTZmMmIgKCJtZWRpYTogcGxhdGZvcm06IEFkZCBDZWRydXMgVlBVIGRlY29kZXIgZHJpdmVyIikK
PiBTdWdnZXN0ZWQtYnk6IEplcm5laiDFoGtyYWJlYyA8amVybmVqLnNrcmFiZWNAZ21haWwuY29t
Pgo+IFN1Z2dlc3RlZC1ieTogUGF1bCBLb2NpYWxrb3dza2kgPHBhdWwua29jaWFsa293c2tpQGJv
b3RsaW4uY29tPgo+IFNpZ25lZC1vZmYtYnk6IFNhbXVlbCBIb2xsYW5kIDxzYW11ZWxAc2hvbGxh
bmQub3JnPgoKRm9yIHdoYXQgaXMgd29ydGg6ClRlc3RlZC1ieTogSmVybmVqIFNrcmFiZWMgPGpl
cm5lai5za3JhYmVjQHNpb2wubmV0PgpSZXZpZXdlZC1ieTogSmVybmVqIFNrcmFiZWMgPGplcm5l
ai5za3JhYmVjQHNpb2wubmV0PgoKQmVzdCByZWdhcmRzLApKZXJuZWoKCgoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
