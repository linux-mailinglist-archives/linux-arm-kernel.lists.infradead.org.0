Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0A211C6A4B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 09:44:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Av0PaX3RVBckqoNwzyZs8gapaRD8FcrVOQFBJd7c1is=; b=QMYUpmrv8wS/Iw
	767mATNbmC+bb8Mamir4pajDpMqI03oGQEUZA9dsYviHsHaKMv+cUhNEYT5/fVEnBIxGtxqVvbfxO
	QWA4/JiHGqz/iABwVEZ0YSW7b31SDEi9+1SNkxWeZmjpNT3M0FeCFF1nAB/uKAq5RoRD7EJn9/aho
	ZvYzpHJOE2Wo5ZP4y/IEq6Kz/91e+1uFXOysiNmgUL1wqoJqplIIrW1dgTPIyyXUnNE0QNsPTowUK
	PbJNu1qm9c8K+t/S6adg48oRmLh7xfpJoNO0Bn5jI56zPVXijVDb2idduwpq+/jCaAHUYjjJ07fqw
	/mSQ1zWPin1gp1ncbnxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWEjV-000095-LR; Wed, 06 May 2020 07:44:45 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWEjN-00007S-Dx
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 07:44:38 +0000
Received: by mail-ot1-f67.google.com with SMTP id t3so630447otp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 May 2020 00:44:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=+PZSdGjgBrO1ZN1QwTXyPWZrbqZlSLSFkTwxM8ooADM=;
 b=XRrXjouYX3Ab1+ZnjKWFp4EVTVj1ZD0I3/BtUCPNDA2jFt4hEZikYf4NszZHhNb6Cu
 0Xn11lAFHdI7cfNYL5FIUMroH6j4iNoIyjsNfxvC6ruDMz55KTLF+YwJI1Elt7JzwSiY
 QInHvlka4yTzJ/pXEvFKbnNg3exdbXCvMs9dZ7i9yF0773nyzOiMbek0emsnwcjCIwAd
 W3vWVEihv4Oeng+e39VYg2gfOtonBRj2GuMqr/4vaLFgqi4XwpO+c1RU28gSVmDYlX/I
 5uNW9M63SIQszpyP3g74Jb0YvZ8VtDtAlAjMGN2y7IyfGhSqwCrebEUeztizoDVfw86l
 fL3w==
X-Gm-Message-State: AGi0PuY7jkeZtDiE2BCMUcTrP52tzTaoNx4VBloRo+XPu+4iwegqVcQK
 vPZIaDRZmIbhfFqo4GCD6Slz4Ud3qTU8CAbw+gs=
X-Google-Smtp-Source: APiQypJ+4xFnHOiS2S+JNds3Xmz+4Kuk15I6/2b9iYq7lC5nwvlq/+iCHXAiNqEpGOfxXlsFFKlO5CbDC3CjtSH/Olk=
X-Received: by 2002:a9d:564:: with SMTP id 91mr5681994otw.250.1588751071000;
 Wed, 06 May 2020 00:44:31 -0700 (PDT)
MIME-Version: 1.0
References: <20200501083227.10886-1-ricardo.canuelo@collabora.com>
 <20200501083227.10886-6-ricardo.canuelo@collabora.com>
In-Reply-To: <20200501083227.10886-6-ricardo.canuelo@collabora.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 6 May 2020 09:44:19 +0200
Message-ID: <CAMuHMdVbRoGAqeqePQDgRpxg4Vsr_LEfHERW-r6KdiSOCo5a6g@mail.gmail.com>
Subject: Re: [RFT PATCH 5/5] dt-bindings: drm: bridge: adi,adv7511.txt:
 convert to yaml
To: =?UTF-8?Q?Ricardo_Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_004437_473179_94F29E9F 
X-CRM114-Status: GOOD (  10.40  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Wei Xu <xuwei5@hisilicon.com>,
 Rob Herring <robh+dt@kernel.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Collabora Kernel ML <kernel@collabora.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUmljYXJkbywKCk9uIEZyaSwgTWF5IDEsIDIwMjAgYXQgMTA6MzMgQU0gUmljYXJkbyBDYcOx
dWVsbwo8cmljYXJkby5jYW51ZWxvQGNvbGxhYm9yYS5jb20+IHdyb3RlOgo+IENvbnZlcnQgdGhl
IEFEVjc1MTEvMTF3LzEzLzMzLzM1IERUIGJpbmRpbmdzIHRvIGpzb24tc2NoZW1hLgo+Cj4gU2ln
bmVkLW9mZi1ieTogUmljYXJkbyBDYcOxdWVsbyA8cmljYXJkby5jYW51ZWxvQGNvbGxhYm9yYS5j
b20+Cgo+IC0tLSAvZGV2L251bGwKPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvZGlzcGxheS9icmlkZ2UvYWRpLGFkdjc1MTEueWFtbAo+IEBAIC0wLDAgKzEsMjkzIEBA
Cgo+ICsgIHJlZy1uYW1lczoKPiArICAgIGRlc2NyaXB0aW9uOgo+ICsgICAgICBOYW1lcyBvZiBt
YXBzIHdpdGggcHJvZ3JhbW1hYmxlIGFkZHJlc3Nlcy4gSXQgY2FuIGNvbnRhaW4gYW55IG1hcAo+
ICsgICAgICBuZWVkaW5nIGEgbm9uLWRlZmF1bHQgYWRkcmVzcy4KPiArICAgIG1pbkl0ZW1zOiAx
Cj4gKyAgICBpdGVtczoKPiArICAgICAgLSBjb25zdDogbWFpbgo+ICsgICAgICAtIGNvbnN0OiBl
ZGlkCj4gKyAgICAgIC0gY29uc3Q6IGNlYwo+ICsgICAgICAtIGNvbnN0OiBwYWNrZXQKCkNhbid0
IHlvdSBhdm9pZCB0aGUgbmVlZCBmb3IgcGF0Y2hlcwpbUkZUIFBBVENIIDEvNV0gYXJtNjQ6IGR0
czogZHJhYWs6IFJlb3JkZXIgaGRtaS1lbmNvZGVyQDM5IHJlZyBhbmQKcmVnLW5hbWVzIHByb3Bl
cnRpZXMKW1JGVCBQQVRDSCAyLzVdIEFSTTogZHRzOiB3aGVhdDogcmVvcmRlciByZWcgYW5kIHJl
Zy1uYW1lcyBwcm9wZXJ0aWVzCmluIGhkbWkgYnJpZGdlcwoKYnkgdXNpbmcKCiAgICBpdGVtczoK
ICAgICAgZW51bToKICAgICAgICAtIG1haW4KICAgICAgICAtIGVkaWQKICAgICAgICAtIGNlYwog
ICAgICAgIC0gcGFja2V0CgppbnN0ZWFkPwoKR3J7b2V0amUsZWV0aW5nfXMsCgogICAgICAgICAg
ICAgICAgICAgICAgICBHZWVydAoKCi0tCkdlZXJ0IFV5dHRlcmhvZXZlbiAtLSBUaGVyZSdzIGxv
dHMgb2YgTGludXggYmV5b25kIGlhMzIgLS0gZ2VlcnRAbGludXgtbTY4ay5vcmcKCkluIHBlcnNv
bmFsIGNvbnZlcnNhdGlvbnMgd2l0aCB0ZWNobmljYWwgcGVvcGxlLCBJIGNhbGwgbXlzZWxmIGEg
aGFja2VyLiBCdXQKd2hlbiBJJ20gdGFsa2luZyB0byBqb3VybmFsaXN0cyBJIGp1c3Qgc2F5ICJw
cm9ncmFtbWVyIiBvciBzb21ldGhpbmcgbGlrZSB0aGF0LgogICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIC0tIExpbnVzIFRvcnZhbGRzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
