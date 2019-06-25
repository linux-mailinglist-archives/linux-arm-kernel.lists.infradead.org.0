Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D83B5257F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 09:55:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UdYtyDSZY9kY73kF+PoFgpW4/AX4FXIpWCLjfitEupU=; b=Sd0gmMO5E6eqpF
	GpjwbRTbNmGZ38fYVv2lkaaOLbVXX7kjmX6tCsZUU3crqqeZgDVs78e68FSDZEdJfDbGRnrLNkWEb
	MOhopSW50blNydfjL2dpDpF9Dh4pioHrECA1Zt9Kzp+tktbTciqILGNIbmMlu6G/fnWuIesoBdfvN
	MyDdGrvNTTHzc5Ka7rmE7g2PHK7rlEmTBLvWctuWis8iimlyo3nQrxtW3nXAhzgXVhofyhdcuAoI6
	EOrCjLtmOHJtj4yatmPiNeAGx28ykOkZlqqVxPW6/aUB0Hcc3+veHKsWNuvgFF+aKEWM1JnGJr7q9
	5L7rSeLBTDp1QJCTL19g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfgJ2-0001MM-7J; Tue, 25 Jun 2019 07:55:56 +0000
Received: from mail-vs1-f67.google.com ([209.85.217.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfgH6-0007KI-59
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 07:53:57 +0000
Received: by mail-vs1-f67.google.com with SMTP id 190so10288188vsf.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 00:53:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=k7GrLWgPyTH64AE8yu3pZlhActyt9AtnBMGSqnnleSA=;
 b=GzcDmztKr1hDkFIyQ/+9d+QC8/zlbNFIm5GzHtUnJWytXv06fM2ejLwtGgNDwH7kLo
 EdljoJPhTOebGoJY/howcKUwzcVujBF2qH3iL02QdV2Srax8kd4BuJxgloDQifyaR11k
 TE71n8VbY5z9qDVxh2iIXmYgYK486ZOqKSB4xebLCr7KrTlj9IIclHqxgxuHIkHU8H2y
 dFepypp6LYyWzdSM1CQc4OY/24iLchNugz/iDW9YJdu+O7LpBVgjozbmBfX8/RJhz3KA
 Uaz9VAhcYbYJuUigVfCmoEg0dECYzwLtUxCfatDBkN8jU0WTWJ68djQffQR57cqDUOZo
 gDXQ==
X-Gm-Message-State: APjAAAUo0Xxu5MSfD00ep5CVT+3HZZk+o6DbgDyDqwSi4nYZyuk78mch
 DdZTutbbJJZ8XoJI44LkpPKaQw==
X-Google-Smtp-Source: APXvYqzDK0QLh1X0XtBLjZ2jcxRvUjtv06u8Y++V+xCQwBF0R3zyl69pFFXgfI7gK6w8GufdobHI0Q==
X-Received: by 2002:a05:6102:20f:: with SMTP id
 z15mr13478414vsp.80.1561449234980; 
 Tue, 25 Jun 2019 00:53:54 -0700 (PDT)
Received: from localhost (li1322-146.members.linode.com. [45.79.223.146])
 by smtp.gmail.com with ESMTPSA id l132sm4986938vkd.39.2019.06.25.00.53.53
 (version=TLS1_2 cipher=AES128-SHA bits=128/128);
 Tue, 25 Jun 2019 00:53:54 -0700 (PDT)
From: Shawn Guo <shawnguo@kernel.org>
To: arm@kernel.org
Subject: [GIT PULL 7/7] i.MX defconfig changes for 5.3
Date: Tue, 25 Jun 2019 15:53:05 +0800
Message-Id: <20190625075305.29082-7-shawnguo@kernel.org>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190625075305.29082-1-shawnguo@kernel.org>
References: <20190625075305.29082-1-shawnguo@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_005356_533222_D07F71FA 
X-CRM114-Status: GOOD (  12.10  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.217.67 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.217.67 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Shawn Guo <shawnguo@kernel.org>, Stefan Agner <stefan@agner.ch>,
 Li Yang <leoyang.li@nxp.com>, linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpUaGUgY2hhbmdlIHNldCBpcyBhIGxpdHRsZSBiaWdnZXIgdGhhbiBleHBlY3RlZC4gIFRo
aXMgaXMgYmVjYXVzZSB0aGF0CmhhbGYgb2YgdGhlIGNoYW5nZXMgd2VyZSBmb3IgNS4yLCBidXQg
dW5mb3J0dW5hdGVseSB0aGV5IG1pc3NlZCB0aGUKbWVyZ2Ugd2luZG93LiAgU28gd2UgaGF2ZSBj
aGFuZ2VzIGZvciB0d28gZGV2ZWxvcG1lbnQgY3ljbGVzIGNvbWJpbmVkCmhlcmUuICBQbGVhc2Ug
cHVsbCwgdGhhbmtzIQoKU2hhd24KCgpUaGUgZm9sbG93aW5nIGNoYW5nZXMgc2luY2UgY29tbWl0
IGExODgzMzljYTVhMzk2YWNjNTg4ZTU4NTFlZDdlMTlmNjZiMGViZDk6CgogIExpbnV4IDUuMi1y
YzEgKDIwMTktMDUtMTkgMTU6NDc6MDkgLTA3MDApCgphcmUgYXZhaWxhYmxlIGluIHRoZSBHaXQg
cmVwb3NpdG9yeSBhdDoKCiAgZ2l0Oi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJu
ZWwvZ2l0L3NoYXduZ3VvL2xpbnV4LmdpdCB0YWdzL2lteC1kZWZjb25maWctNS4zCgpmb3IgeW91
IHRvIGZldGNoIGNoYW5nZXMgdXAgdG8gOGJiYzJiM2E3ZjgwYjYxYzA1Yjg3NjA2YzJhY2Q4MmE2
MmQzMDRiMDoKCiAgYXJtNjQ6IGRlZmNvbmZpZzogRW5hYmxlIENPTkZJR19LRVlCT0FSRF9TTlZT
X1BXUktFWSBhcyBtb2R1bGUgKDIwMTktMDYtMjUgMTU6MTU6NTkgKzA4MDApCgotLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCmku
TVggZGVmY29uZmlnIGNoYW5nZXMgZm9yIDUuMzoKICogaW14X3Y2X3Y3X2RlZmNvbmZpZzoKICAg
LSBQQ0Y4NTdYIEdQSU8gZXhwYW5kZXIKICAgLSBTSU9YIGJ1cyBkcml2ZXIKICAgLSB0aGVybWFs
IHN0YXRpc3RpY3MKICAgLSBUUE0gUFdNIGRyaXZlcgogICAtIE9WMjY4MCBjYW1lcmEgZHJpdmVy
CiAgIC0gU05WUyBMUEdQUiBOVk1FTSBkcml2ZXIKICAgLSBpLk1YIERUIGJhc2VkIGNwdWZyZXEg
ZHJpdmVyCiAqIGFybTY0IGRlZmNvbmZpZyBidWlsdC1pbjoKICAgLSBpLk1YOE1NIHBpbmN0cmwg
YW5kIGNsb2NrCiAgIC0gaS5NWCBMUEkyQyBkcml2ZXIKICAgLSBST0hNX0JENzE4WFggUE1JQwog
ICAtIE9DT1RQIE5WTUVNIHN1cHBvcnQKICAgLSBpLk1YIFNDVSBiYXNlZCBTb0MgYnVzIGRyaXZl
cgogKiBhcm02NCBkZWZjb25maWcgbW9kdWxlczoKICAgLSBpLk1YIFNQSSBkcml2ZXIKICAgLSBp
Lk1YIHN5c3RlbSBjb250cm9sbGVyIHdhdGNoZG9nCiAgIC0gU05WUyBSVEMgZHJpdmVyCiAgIC0g
SVNMMjkwMTggbGlnaHQgYW5kIHByb3hpbWl0eSBzZW5zb3IgZHJpdmVyCiAgIC0gTVBMMzExNSBw
cmVzc3VyZSBzZW5zb3IgZHJpdmVyCiAgIC0gaS5NWDggRFQgYmFzZWQgY3B1ZnJlcSBzdXBwb3J0
CiAgIC0gUW9ySVEgVGhlcm1hbCBNb25pdG9yaW5nIFVuaXQgZHJpdmVyCiAgIC0gU05WUyBwb3dl
ciBrZXkgZHJpdmVyCgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tCkFiZWwgVmVzYSAoMSk6CiAgICAgIGFybTY0OiBkZWZjb25m
aWc6IEVuYWJsZSBSVENfRFJWX1NOVlMKCkFkYW0gRm9yZCAoMSk6CiAgICAgIEFSTTogaW14X3Y2
X3Y3X2RlZmNvbmZpZzogQWRkIEdQSU9fUENGODU3WAoKQW5zb24gSHVhbmcgKDYpOgogICAgICBh
cm02NDogZGVmY29uZmlnOiBhZGQgc3VwcG9ydCBmb3IgaS5NWCBzeXN0ZW0gY29udHJvbGxlciB3
YXRjaGRvZwogICAgICBBUk06IGlteF92Nl92N19kZWZjb25maWc6IEVuYWJsZSBDT05GSUdfVEhF
Uk1BTF9TVEFUSVNUSUNTCiAgICAgIEFSTTogaW14X3Y2X3Y3X2RlZmNvbmZpZzogQWRkIFRQTSBQ
V00gc3VwcG9ydCBieSBkZWZhdWx0CiAgICAgIGFybTY0OiBkZWZjb25maWc6IEVuYWJsZSBDT05G
SUdfUU9SSVFfVEhFUk1BTAogICAgICBhcm02NDogZGVmY29uZmlnOiBBZGQgaS5NWCBTQ1UgU29D
IGluZm8gZHJpdmVyCiAgICAgIGFybTY0OiBkZWZjb25maWc6IEVuYWJsZSBDT05GSUdfS0VZQk9B
UkRfU05WU19QV1JLRVkgYXMgbW9kdWxlCgpGYWJpbyBFc3RldmFtICgzKToKICAgICAgYXJtNjQ6
IGRlZmNvbmZpZzogRW5hYmxlIENPTkZJR19TUElfSU1YCiAgICAgIEFSTTogaW14X3Y2X3Y3X2Rl
ZmNvbmZpZzogRW5hYmxlIHRoZSBPVjI2ODAgY2FtZXJhIGRyaXZlcgogICAgICBBUk06IGlteF92
Nl92N19kZWZjb25maWc6IFNlbGVjdCBDT05GSUdfTlZNRU1fU05WU19MUEdQUgoKTGVvbmFyZCBD
cmVzdGV6ICg2KToKICAgICAgYXJtNjQ6IGRlZmNvbmZpZzogRW5hYmxlIGlteDhtbSBjbGsvcGlu
Y3RybAogICAgICBhcm02NDogZGVmY29uZmlnOiBFbmFibGUgbHBpMmMgZm9yIGlteDhxeHAgYW5k
IHNlbnNvcnMKICAgICAgYXJtNjQ6IGRlZmNvbmZpZzogRW5hYmxlIFJPSE1fQkQ3MThYWCBQTUlD
IGZvciBpbXg4bW0tZXZrCiAgICAgIGFybTY0OiBkZWZjb25maWc6IE5WTUVNX0lNWF9PQ09UUD15
IGZvciBpbXg4bQogICAgICBhcm02NDogZGVmY29uZmlnOiBBUk1fSU1YX0NQVUZSRVFfRFQ9bQog
ICAgICBBUk06IGlteF92Nl92N19kZWZjb25maWc6IEVuYWJsZSBDT05GSUdfQVJNX0lNWF9DUFVG
UkVRX0RUCgpQZW5nIEZhbiAoMSk6CiAgICAgIGRlZmNvbmZpZzogYXJtNjQ6IGVuYWJsZSBpLk1Y
OCBTQ1Ugb2N0b3AgZHJpdmVyCgpVd2UgS2xlaW5lLUvDtm5pZyAoMSk6CiAgICAgIEFSTTogaW14
X3Y2X3Y3X2RlZmNvbmZpZzogRW5hYmxlIFNJT1ggYnVzCgogYXJjaC9hcm0vY29uZmlncy9pbXhf
djZfdjdfZGVmY29uZmlnIHwgIDkgKysrKysrKysrCiBhcmNoL2FybTY0L2NvbmZpZ3MvZGVmY29u
ZmlnICAgICAgICAgfCAxNyArKysrKysrKysrKysrKysrKwogMiBmaWxlcyBjaGFuZ2VkLCAyNiBp
bnNlcnRpb25zKCspCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
