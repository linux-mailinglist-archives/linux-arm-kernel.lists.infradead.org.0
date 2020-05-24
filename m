Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4F641E02C8
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 24 May 2020 22:38:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=D+BNu7aVyZF1nh20QGeEmh18I59VinWOW58SSBP+Jm8=; b=DwvaVQF3cxcfvl
	bUXt+6xbmlMU0bjWSGR+z/p3yLxZzwaTcbSIkQa/7ithdXhtqrmA7fGIOqqbScIoARncqM5erqpTn
	Hnf8t+dra7lcZurF7RmLho9+q97bIv7FA94t1kb8Q1i1S9LebrmChps/DsdgNEbCkjF0xfHyg2YvM
	0TUQ9evzQorMeZ163dND8IGJGGFuc4JGIizdIDgC0rMA/Y99Gd+i3n4fwaF4yfqL5+nKEHL/ooQ4Z
	0yZaaxOOnpLBjwo6j8qPZm/7hqKPEdZPAgpbBk5lHHE40zk1zvw19uJ8w/+fbNlX60yjiOQP5UktZ
	stmIJ2m6+iT2KVA15r4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcxO6-0003pF-TA; Sun, 24 May 2020 20:38:26 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcxNu-0003nN-S9
 for linux-arm-kernel@lists.infradead.org; Sun, 24 May 2020 20:38:16 +0000
Received: by mail-wr1-x444.google.com with SMTP id c3so11103762wru.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 24 May 2020 13:38:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/icmu0sjsSTHpyf6lrSka7+R9RIlcL1gU1t218+MYBM=;
 b=e6Fq6vsjf4t4jy+DaVJnSHTTaqqyxnb7Pq7KX5+Y2OwDgD+Ch6oNVQjovcO7nSIkH8
 A1tQvVJEqsNXaFb+ipwz12RCGoUudR51JKUus17d1pBUUFfv7H4Pm28K4n4uXp/OFUvJ
 BtxDWPyBODDDOMzTcqjXCzAc16/w8SuJjJP3t+txIT6BvCf1jQ4XA9N28LlrhHcGXh1s
 4Uer04M1QSY8myVeN0d6wgwTlpI89OehSU2sodg2qwQ7+X4zWXcWKNh6gk83ET5ddqs7
 KO9Wc/fim9DHk4reJP/xp05194oN7roCYH+y3ax/sw9ph8tw1I6gCtrNilX75h1JdmCl
 Tl4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/icmu0sjsSTHpyf6lrSka7+R9RIlcL1gU1t218+MYBM=;
 b=npXJBUpvkQQQ/d7P+IhQbyoprZF6FN5I3rNZyL7zY0zgnqMqbMwbdHt3u4NgDC+AX4
 cGlaHjpU6M/Qt4SxchCIEeP4pcD+tQKrqI6AtOOCYMA77K73eWH6P1GSAkDPk07VoFV1
 ZgUZYmFMiSU2FNjcEX2yc4q1znkqhyIm66gbsfE8RtNydvvpMIFhu98nw9CmlH4gjjR2
 8EnvnXmmAshFLqL14/On5fHfwa8UZqrMgH7Bp09MmJZZ6BnsyU+lEV0Oj0F2huZSffea
 1F/26hk/YJhM0q+Xv+DndGAVxJWALeK7/2JezXPzH+mESHFbpBmGfdC5wuJ5l0vbK8nJ
 G0VA==
X-Gm-Message-State: AOAM532VN209HcbQOkrQYJRNw6Hl3v92lSo5ivltXfwYP24SpeOySKjF
 AP7fOviBhtlWYeYsfVBmX5c=
X-Google-Smtp-Source: ABdhPJxFp54aa1cG/F6uB6xVzrumpvlwSN9vfDlDYgfnh0rSsjgLO82lhCwPvNEFOnE7HBPEozIpfw==
X-Received: by 2002:a5d:5682:: with SMTP id f2mr11727231wrv.382.1590352692636; 
 Sun, 24 May 2020 13:38:12 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id s5sm348887wme.37.2020.05.24.13.38.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 24 May 2020 13:38:12 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: soc@kernel.org
Subject: [GIT PULL 1/1] Broadcom devicetree fixes for 5.7 (part 2, v2)
Date: Sun, 24 May 2020 13:37:14 -0700
Message-Id: <20200524203714.17035-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_133814_927246_7C07892B 
X-CRM114-Status: GOOD (  10.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
 Hamish Martin <hamish.martin@alliedtelesis.co.nz>,
 Florian Fainelli <f.fainelli@gmail.com>, arnd@arndb.de, khilman@kernel.org,
 =?UTF-8?q?Vincent=20Stehl=C3=A9?= <vincent.stehle@laposte.net>,
 bcm-kernel-feedback-list@broadcom.com, olof@lixom.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIGZvbGxvd2luZyBjaGFuZ2VzIHNpbmNlIGNvbW1pdCBiOWJiZTZlZDYzYjJiOWYyYzllZTVj
YmQwZjJjOTQ2YTI3MjNmNGNlOgoKICBMaW51eCA1LjctcmM2ICgyMDIwLTA1LTE3IDE2OjQ4OjM3
IC0wNzAwKQoKYXJlIGF2YWlsYWJsZSBpbiB0aGUgR2l0IHJlcG9zaXRvcnkgYXQ6CgogIGh0dHBz
Oi8vZ2l0aHViLmNvbS9Ccm9hZGNvbS9zdGJsaW51eC5naXQgdGFncy9hcm0tc29jL2Zvci01Ljcv
ZGV2aWNldHJlZS1maXhlcy1wYXJ0Mi12MgoKZm9yIHlvdSB0byBmZXRjaCBjaGFuZ2VzIHVwIHRv
IGJlMGVjMDYwYjU0ZjA0ODFmYjk1ZDU5MDg2YzE0ODRhOTQ5YzkwM2M6CgogIEFSTTogZHRzOiBi
Y206IEhSMjogRml4IFBQSSBpbnRlcnJ1cHQgdHlwZXMgKDIwMjAtMDUtMjAgMTc6MTU6MTYgLTA3
MDApCgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tClRoaXMgcHVsbCByZXF1ZXN0IGNvbnRhaW5zIEJyb2FkY29tIEFSTS1iYXNl
ZCBTb0NzIERldmljZSBUcmVlIGZpeGVzIGZvcgo1LjcsIHBsZWFzZSBwdWxsIHRoZSBmb2xsb3dp
bmc6CgotIFZpbmNlbnQgZml4ZXMgdGhlIHBvbGFyaXR5IG9mIHRoZSBBQ1QgTEVEIG9uIHRoZSBS
YXNwYmVycnkgUGkgWmVybyBXCiAgYm9hcmQKCi0gSGFtaXNoIGZpeGVzIHRoZSBBUk0gUFBJIGlu
dGVycnVwdHMgc2Vuc2l0aXZ5IGZvciB0aGUgSHVycmljYW5lIDIKICBTb0NzCgotLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCkhh
bWlzaCBNYXJ0aW4gKDEpOgogICAgICBBUk06IGR0czogYmNtOiBIUjI6IEZpeCBQUEkgaW50ZXJy
dXB0IHR5cGVzCgpWaW5jZW50IFN0ZWhsw6kgKDEpOgogICAgICBBUk06IGR0czogYmNtMjgzNS1y
cGktemVyby13OiBGaXggbGVkIHBvbGFyaXR5CgogYXJjaC9hcm0vYm9vdC9kdHMvYmNtLWhyMi5k
dHNpICAgICAgICAgICB8IDYgKysrLS0tCiBhcmNoL2FybS9ib290L2R0cy9iY20yODM1LXJwaS16
ZXJvLXcuZHRzIHwgMiArLQogMiBmaWxlcyBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDQgZGVs
ZXRpb25zKC0pCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
