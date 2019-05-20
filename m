Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87AF622D5D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 09:48:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q/dvVsdKXkZU2T3r/CoZCI/i210G8JaJtmRJpHs5Btc=; b=e/Ku5wCmKH1OY7
	4wqCX5EbnDxsDYr42kkKcioPo3pR23SZ12h/rxXwZX0tP8Oo7EOWosj5rDpbUey9twqAEacqHgffF
	PqGXHYLzqXswG9djqzCh65KYc+qOGBDR/x19+wisD++4eA3oiI2WnJcw4WRUO2BlZRXoxKX4NAPvX
	4grZo0UvUjV0k0+Hs15q1HOvyQ0gvY4omUAIo5hLPmO2Xyrpk722/N5Ad/rbj46tsF3CnUBOR3q/t
	LZX4nb4cp0v8PE3I77g5cdBi0UGqESCyob5fJoR5mHY2LNsVyfIEqRc2uK7Cgr6AA2u5Hln4PxQ4v
	rwfMs2T1pmXhx5YtjpPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSd25-0008Ot-5Q; Mon, 20 May 2019 07:48:29 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSd1r-0008EB-5f
 for linux-arm-kernel@bombadil.infradead.org; Mon, 20 May 2019 07:48:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:Cc:References:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=p2X8rp8fF9VRgvfm6MxNebWPoaW3y6Gx323uRhzkZb4=; b=aO1C9OYVocn3YE7mD1N5JJc/TW
 MFyK0af0kcGSALfNquQ5QuEt83ohrfTZxqaYBy69Zrtl2yji6k+r6ztaLovxFgsILQJq9w42+1KhL
 E94L2m7AIyArAm8FXQLPZH4ig6z7Em5n4Ddc5VHMnCkut7LVFAK3cOcbS0cvnXbgWJRlTEHvz02nZ
 1UxkANy4EB0qtZOF+/jxMiwKvUsfL4VW1yw5/Foio506gFYlN/3orRQ40VzYoqon2qdPYwJaDt+2H
 Jw2bSPqy5uBJEjNCrOUNiZY5ESV6k3HEYmmrzewXxAkf6GLD63k1lTKhAJHf/CesDKXeyO3Vz0rGA
 mZCJtiCQ==;
Received: from 1.mo177.mail-out.ovh.net ([178.33.107.143])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hScoO-000427-GK
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 07:34:22 +0000
Received: from player760.ha.ovh.net (unknown [10.108.54.72])
 by mo177.mail-out.ovh.net (Postfix) with ESMTP id E4A8CFB8A2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 09:34:10 +0200 (CEST)
Received: from armadeus.com (lfbn-1-7591-179.w90-126.abo.wanadoo.fr
 [90.126.248.179])
 (Authenticated sender: sebastien.szymanski@armadeus.com)
 by player760.ha.ovh.net (Postfix) with ESMTPSA id 064FF5F24312;
 Mon, 20 May 2019 07:33:54 +0000 (UTC)
Subject: Re: [PATCH RE-RESEND 1/2] drm/panel: Add support for Armadeus ST0700
 Adapt
To: Sam Ravnborg <sam@ravnborg.org>
References: <20190507152713.27494-1-sebastien.szymanski@armadeus.com>
 <CAOMZO5B2nMsVNO6O_D+YTSjux=-DjNPGxhkEi3AQquOZVODumA@mail.gmail.com>
 <20190507161950.GA24879@ravnborg.org>
 <20190508083303.GR17751@phenom.ffwll.local>
 <20190508090612.GT17751@phenom.ffwll.local>
From: =?UTF-8?Q?S=c3=a9bastien_Szymanski?= <sebastien.szymanski@armadeus.com>
Openpgp: preference=signencrypt
Message-ID: <0c5d70db-e7c1-5d02-9c33-65dabd431a68@armadeus.com>
Date: Mon, 20 May 2019 09:34:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190508090612.GT17751@phenom.ffwll.local>
Content-Language: en-US
X-Ovh-Tracer-Id: 6372874948130854140
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduuddruddtjedguddvgecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_083420_621954_4EAA71C5 
X-CRM114-Status: GOOD (  20.64  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.33.107.143 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, David Airlie <airlied@linux.ie>,
 Shawn Guo <shawnguo@kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>,
 DRI mailing list <dri-devel@lists.freedesktop.org>,
 Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 stable <stable@vger.kernel.org>, Fabio Estevam <festevam@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8gU2FtLAoKT24gNS84LzE5IDExOjA2IEFNLCBEYW5pZWwgVmV0dGVyIHdyb3RlOgo+IE9u
IFdlZCwgTWF5IDA4LCAyMDE5IGF0IDEwOjMzOjAzQU0gKzAyMDAsIERhbmllbCBWZXR0ZXIgd3Jv
dGU6Cj4+IE9uIFR1ZSwgTWF5IDA3LCAyMDE5IGF0IDA2OjE5OjUwUE0gKzAyMDAsIFNhbSBSYXZu
Ym9yZyB3cm90ZToKPj4+IEhpIEZhYmlvCj4+Pgo+Pj4gT24gVHVlLCBNYXkgMDcsIDIwMTkgYXQg
MTI6MzM6MzlQTSAtMDMwMCwgRmFiaW8gRXN0ZXZhbSB3cm90ZToKPj4+PiBbQWRkaW5nIFNhbSwg
d2hvIGlzIGhlbHBpbmcgdG8gcmV2aWV3L2NvbGxlY3QgcGFuZWwtc2ltcGxlIHBhdGNoZXNdCj4+
Pj4KPj4+PiBPbiBUdWUsIE1heSA3LCAyMDE5IGF0IDEyOjI3IFBNIFPDqWJhc3RpZW4gU3p5bWFu
c2tpCj4+Pj4gPHNlYmFzdGllbi5zenltYW5za2lAYXJtYWRldXMuY29tPiB3cm90ZToKPj4+Pj4K
Pj4+Pj4gVGhpcyBwYXRjaCBhZGRzIHN1cHBvcnQgZm9yIHRoZSBBcm1hZGV1cyBTVDA3MDAgQWRh
cHQuIEl0IGNvbWVzIHdpdGggYQo+Pj4+PiBTYW50ZWsgU1QwNzAwSTVZLVJCU0xXIDcuMCIgV1ZH
QSAoODAweDQ4MCkgVEZUIGFuZCBhbiBhZGFwdGVyIGJvYXJkIHNvCj4+Pj4+IHRoYXQgaXQgY2Fu
IGJlIGNvbm5lY3RlZCBvbiB0aGUgVEZUIGhlYWRlciBvZiBBcm1hZGV1cyBEZXYgYm9hcmRzLgo+
Pj4+Pgo+Pj4+PiBDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZyAjIHY0LjE5Cj4+Pj4+IFJldmll
d2VkLWJ5OiBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwub3JnPgo+Pj4+PiBTaWduZWQtb2ZmLWJ5
OiBTw6liYXN0aWVuIFN6eW1hbnNraSA8c2ViYXN0aWVuLnN6eW1hbnNraUBhcm1hZGV1cy5jb20+
Cj4+PiBSZXZpZXdlZC1ieTogU2FtIFJhdm5ib3JnIDxzYW1AcmF2bmJvcmcub3JnPgo+Pj4KPj4+
IElmIHlvdSB3aWwgbHJlc2VuZCB0aGUgcGF0Y2ggSSBjYW4gYXBwbHkgaXQuCj4+PiBJIGhhdmUg
bG9zdCB0aGUgb3JpZ2luYWwgbWFpbC4KPj4KPj4gVXN1YWxseSBwYXRjaHdvcmsgc2hvdWxkIGhh
dmUgaXQgYWxyZWFkeSAoYW5kIHlvdSBjYW4gcGlwZSB0aGUgcmF3Cj4+IHBhdGNod29yayBtYm94
IGludG8gZGltIGFwcGx5KSwgYnV0IHNvbWVob3cgaXQncyBub3QgdGhlcmUgZWl0aGVyLgo+PiBO
b3Qgc3VyZSB3aHksIHNvbWV0aW1lcyB0aGlzIGlzIGJlY2F1c2UgbWFpbHMgYXJlIHN0dWNrIGlu
IG1vZGVyYXRpb24sCj4+IHNvbWV0aW1lcyBiZWNhdXNlIHBlb3BsZSBkbyBpbnRlcmVzdGluZyB0
aGluZ3Mgd2l0aCB0aGVpciBtYWlscyAoZS5nLiBzbXRwCj4+IHNlcnZlcnMgbWFuZ2xpbmcgZm9y
bWF0dGluZykuCj4gCj4gcGF0Y2h3b3JrIHdhcyBqdXN0IGEgYml0IHNsb3csIGl0J3MgdGhlcmUg
bm93Ogo+IAo+IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjA0MDgv
Cj4gCgpXaWxsIHlvdSB0YWtlIHRoZSBwYXRjaCBmcm9tIHBhdGNod29yayBvciBzaG91bGQgSSBy
ZXNlbnQgaXQgPwoKUmVnYXJkcywKCj4gQ2hlZXJzLCBEYW5pZWwKPiAKCgotLSAKU8OpYmFzdGll
biBTenltYW5za2kKU29mdHdhcmUgZW5naW5lZXIsIEFybWFkZXVzIFN5c3RlbXMKVGVsOiArMzMg
KDApOSA3MiAyOSA0MSA0NApGYXg6ICszMyAoMCk5IDcyIDI4IDc5IDI2CgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
