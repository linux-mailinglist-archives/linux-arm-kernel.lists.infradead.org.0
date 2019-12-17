Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74593122C6B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 13:59:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aMvNx7M33lDvr2mrqCs5y+o+cTvXsFfk1cmFKwKErWo=; b=LsXwvOu1Rgoiot
	25kE6jdERjfXZNrZgsf0Ddtm2UDW+mGxDcqX4xt9oZbcvMa8nfxUjfcOG1TK81RC9KGpC7XRnJa4S
	OHWJQoDDi8LFQyb/jKUNO896KR64c+crruucylEPiGnM5+LfND2IRg1/IDA6S7segoT+PgqV/ZCbi
	3ooX7/AT+OjzftPTCsvuraqhQhtcf+QZiTrqFe6MbgbbTvghbMQ5cI1+Fk4pFtMT4Rb635KXDV5I+
	TL5w9uhrltNluU3BF3lOYAQooltTCUuDZBBPrgP4Rt6CAQZLyOf7h8QMIv8Lt38fZVRIZlwianYTC
	3WsoLLpUVHRzJ0XI27qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihCS2-0002NB-Kx; Tue, 17 Dec 2019 12:59:46 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihCRs-0002Ll-Db
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 12:59:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1576587567;
 bh=2HkFeiZwUwI8dkycGVvfX0tWo0t5jmvhNrEkAT95D7Y=;
 h=X-UI-Sender-Class:Subject:From:To:Cc:References:Date:In-Reply-To;
 b=krm15xqHsYEogj2zU9x5pN7IGkkGJbURAuJw0ZIvbB3AwSXilaZqdhuSIUU7GWClA
 AYD4yfJlYtcE4MSmyY8ju1eQPzmWvHQfVCPTsPjI2HT28NZx7jBLcbDcfMoMQFLVZx
 UhQwQ8gzsTwTBEqRF7wrXQb7b9lTRUE21eN/of5s=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.176] ([37.4.249.154]) by mail.gmx.com (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1M8hVB-1id3aI2Qa1-004lVV; Tue, 17
 Dec 2019 13:59:27 +0100
Subject: Re: [PATCH V4 01/10] bluetooth: hci_bcm: Fix RTS handling during
 startup
From: Stefan Wahren <wahrenst@gmx.net>
To: Marcel Holtmann <marcel@holtmann.org>,
 Johan Hedberg <johan.hedberg@gmail.com>, =?UTF-8?Q?Ond=c5=99ej_Jirman?=
 <megous@megous.com>
References: <1570375708-26965-1-git-send-email-wahrenst@gmx.net>
 <1570375708-26965-2-git-send-email-wahrenst@gmx.net>
 <61789264-a4c2-ac85-9d74-d186213ec70a@gmx.net>
 <20191216132509.ofqcdpwxsd7324ql@core.my.home>
 <6f05f4d8-fa84-ae81-ac4f-00ab12fabeea@gmx.net>
Message-ID: <5bbda434-d0e4-7162-8634-9900a4fa9148@gmx.net>
Date: Tue, 17 Dec 2019 13:59:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <6f05f4d8-fa84-ae81-ac4f-00ab12fabeea@gmx.net>
Content-Language: en-US
X-Provags-ID: V03:K1:J/+nhngNsiRpXFva8LhRKZOD3EwX4sty6zgKpJk4HznZvWttOsm
 pg38SqOn6JvtHccgD/eEeBbTZpIaPNZP3x87zozi6Z9ONPXxncLRdf9XhnI5pwAUM0Mb0Wc
 z9IFVNHrh5tI4v3dWmQr8AO1q79vn9dtdIfPtRfjniT33D1HCqZ/guQgdTPFnToxvzmNXv7
 WBfGdfYM0rgoeBW+l719A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:qKCYXvb1phE=:6j6FxufvYMfhGTAmdw6I4H
 0KpswJSIboPCVLdJzdz3YKdXLdu1a5diSG0iqFDH8VqmJnAt50BAcFZDtCtk3NMp8u828IZuo
 xqtpeLbTXCnDLCPo1RerRzmV8UxMvdOEl3HiEEu5geuGSzBEMh9wfTihO+5iZOuEu2MpwK8JE
 1WKTBhQ64wpvoQ8+hwzAvovwnOh8yv2N8X9TO9WP2olCnBw9FC9vL1T+7QYfB2RRjsx/pG8A5
 qtCwgOkiFwkgBQPjFc11nIVK3juEMS/s6N16UlHTQSjlhEVhoGpO+t2emauIDVEEpR8nE1Aoh
 s5Jd1+bd7nsCJacbBpQKyO11rLU9dAwjV2KWkAWiHZoa/fc9T27UQzXyoDLKblV4PYZh62d03
 lyP7ok5Ry6ZMyQYHyVz8JNUDuHGC88vwYrdV57JVLTWlfhviwF2BI6/RQky+CPgiZegRQRTRW
 nVsUKizHSWx0NsiqSdgTg5IilDxMSB6A2fmG/jCLyilAJk1+x4SP52tDmBuD3bSHHq5RldPWj
 Gu2NkKJ6+tmENI3r6WK7jDEjXvIY/tihG3I15XcOzALDQ7RaTwtOk1XXYYn898ltR0fSNhFcT
 5UyCI4e9ZedcZHv3by2cJR2TIgmNEHFdi/oJAO5l6qQLITYlPbl6/tUwSdTO4XBA50Q571R8x
 dpt0IBldQ0NXF8OzxpBsTPlydNrLJyjBB0xDDg6qkG3pXkLMLpLrOq0hi6dyzuSGbXm4FpCO3
 tEt74TL/3JwWdimfYHmjus/EbAYb0FM/abip0zT4SQh+b3eBFuHPtWc0pKYgOXEa9wp4j5PyF
 4yqiQ9F/ftzcl0ghzxxaSamYT4+lLr6O4rGqoe5+Q9xePBKGqtdveLeoor1/Xbqjw6MdNy1po
 gvFpb6pr0Nr+cvvK876r/mC26aSIhHpmN8uNSpgJ2Ad8F/wPI1s/jhA68U/Y61xBw3gdvu5G+
 80PLhnUakDZ9X73QfBuuTjvZQfBgg7Vtpp2VrKWTO2OpZQr8P50OS1f4xdeQm1B4LRPEB21Rw
 jJnA2ivOlrF2B/M28yIRr/8F/PFbuRiaMkyY/ikJs8gLLW7H/ZNHzpJi02HrRbVq3sJW9/obG
 jWq0GSWoRbzJfGvwA75RfDNJEfriBlcViruHqMTBzrYyJUcSc9T7rN4ejSGfbYGqKVILzqUSJ
 Ya6MfWzQ1hcxsKeAvjw6444cljAR1DDF2SipO8qSFSINnPlX5N87uBX8vAJxcakNkncReRXQS
 Ct0ZqFxIjqFXU0ULu9O+VTHZpkNxKW0DJMDUTiSzsYu8HnSBLwVwfT79BYpA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_045936_790175_BD2E9445 
X-CRM114-Status: GOOD (  10.85  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.22 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
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
Cc: linux-bluetooth@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgT25kcmVqLAoKQW0gMTYuMTIuMTkgdW0gMTk6Mjggc2NocmllYiBTdGVmYW4gV2FocmVuOgo+
IEhpIE9uZHJlaiwKPgo+IEFtIDE2LjEyLjE5IHVtIDE0OjI1IHNjaHJpZWIgT25kxZllaiBKaXJt
YW46Cj4+Cj4+IE1lYW53aGlsZSBpIHdpbGwgcGxheSB3aXRoIG1vZGlmaWNhdGlvbnMgb2Ygb3Jp
Z2luYWwgcGF0Y2ggb24gdGhlCj4+IFJhc3BiZXJyeSBQaSA0IGFuZCBjb21lIGJhY2sgdG8geW91
LgoKY291bGQgeW91IHBsZWFzZSB0ZXN0IHRoaXMgcGF0Y2ggWzJdIG9uIHRvcCBvZiBjdXJyZW50
IGJsdWV0b290aC1uZXh0PwoKVGhpcyBpcyB0aGUgc29sdXRpb24gaW4gY2FzZSB3ZSBkb24ndCBm
aW5kIHRoZSBjYXVzZSBvZiB0aGlzIGlzc3VlLiBJCmRvbid0IHByZWZlciB0aGlzIG9uZSwgYmVj
YXVzZSB0aGlzIGlzIG5leHQgc3R1ZmYgYW5kIHdlIG5lZWQgdG8gcmV2ZXJ0CnRoZSBvZmZlbmRp
bmcgcGF0Y2ggZm9yIExpbnV4IDUuNS4KClsyXSAtIGh0dHBzOi8vZ2lzdC5naXRodWIuY29tL2xh
dGVnb29kYnllLzNkMzllNGIwN2Q0MDFmMDdmYTlmOWMyZjExZTFmMTdkCgo+Cj4gVGhhbmtzCj4g
U3RlZmFuCj4KPiBbMV0gLQo+IGh0dHA6Ly93d3cuc3BhcmtsYW4uY29tL3AyLXByb2R1Y3RzLWRl
dGFpbC5waHA/UEtleT00OTg0RlZ1a2pjcHlsemlmUWlNLVRHRkUtSUtYRC0tQkN3ZjRQMTVLZnJV
JkFQNjI1Ngo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
