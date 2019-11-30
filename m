Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABCB510DDA0
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 30 Nov 2019 13:32:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=tRFpLIx/+imMoig4qI0ndVsBpV7kUpd/eyKxK12WOE8=; b=B0X
	dg/0p38R7pmxVuFmcHebasTICr9z5aNy5BvwImRTB3/xLaQmhc9SKgjBBEnSvshr84YzJEnfUovbi
	q3ZclDEDSZo/PN7lHhbuhX+79Iu3sNIzSENbBLWcNGHkA4FBsdLmJyDFLikmOxfLHHYkE9DPbkpEo
	xG4Roz4mEGq6cUauMDfI0JNAEF4yzsretlX2ZAnMOlVLkiQ50zS/jcy2OAsa52RaL/XaFDlvz3s+D
	FrfgRUqZtDwA+y6EVrlqOMpJQEy3Qdcvr6zU8ZUUxsFJJS9nkp/xujw3s//GzbX1iES0qpjbUr2dV
	l1R0xxqxqZBJjO3fw0xp5lU330jjdjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ib1up-0006TN-BZ; Sat, 30 Nov 2019 12:31:59 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ib1ui-0006Sp-1n; Sat, 30 Nov 2019 12:31:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1575117101;
 bh=oXBpO8xtFCWk1OwtXAQzPjXIN3wBNzah/skH+/2fT1A=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=MknSO2kTWXw7LhuBY0xNQZ44W/gvblzA9Xm0EjLAcz9i1C3XcZpWMeGW1ZhWt/nl0
 TUDtZ5dqHObQ4hCBBX9IL5lS7wcFTzQV1kM+FxEXDbNsgQkfSOoQyyuJuM2fsrzKwq
 ay42rUbTLQjyWoQgcOyF1izhwMWCnXwIxnpHP0Oo=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.167]) by mail.gmx.com
 (mrgmx005 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1Mj8mV-1i7lVI2II1-00fD4h; Sat, 30 Nov 2019 13:31:41 +0100
From: Stefan Wahren <wahrenst@gmx.net>
To: Florian Fainelli <f.fainelli@gmail.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH] ARM: dts: bcm283x: Fix critical trip point
Date: Sat, 30 Nov 2019 13:31:13 +0100
Message-Id: <1575117073-5990-1-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
X-Provags-ID: V03:K1:TnK9vmD0g3JCztO+URU69VRqdAYJzHs+nwwfWHPsw7LxQtMw5Jh
 KsXui6qu36Ay5s7DpLaumEOiSJ0nLC6kjs+oEPjvP0qb7fETosjB8WW6LzhDhDI60P8TgwQ
 n9ZDJXEumCCYEPMdb8TJr14MGo6w4jERxD0ckRz+Rf6s3HlvRllOaeKP/jDW+6TVaJELpfL
 X4Q8BOzuFNnl/OUQNtbQw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:fLyRrZcc6Lo=:UmCtmbbDwkkHFajJDosBH4
 J35iiFaNd/EELxd13M4dPnt9NvWNP437ZpnpVgsvBnr7eNfZCR7zbw8+0rbbMdgAULBAz/l4v
 N7yUbuEAkQTUGjmPmUeUOF13djmAsWmxqakm1VW24dwjfJMqR570/bD79tEmj0oLswq4S3ASU
 xribZOy7Qi4Gs7+6/GpAJXc0wa0CwxNK+MXVs9Kijbd9dX4lO3aMzR5SQMRHW3CKHAA4ob/q2
 59S+Xhz2R+YJy7Jf1Q7uzepifq3NjVeY+QkZlI8gCz5KReY3BvCzxMnO9nXxD0O7sdQTmu/oC
 qp5o4Xfa4QJ2OJeCykYBxalxSy/kWU4Pf9a+0x9kal1+mErrbGtvxpP7PjwmLuIj6HoyhRq7x
 kFk95iAdXmY4Aebx97oMhA+uo7E/p5fm+oISn4P+6F/vRdQjICLC/uxsGEG+6A/pWzDwWlP23
 1PhTzWB6V5PsxCakHVR8bq/2Lsm5LIp4Mya6DtqQUXtXae+wVyKdkLchPdXwjCacMMuUsY+9e
 OX66MjK13u+vJ9L03jIhFMQjqBhlLmNcL1gaQXaJHKNbIGysW8WkiLPw5bsxkrlQeMDaT2rA3
 e2uMs3tjXijhcodeK5QJ5BfNvSpIg6ul/UTnI7/f2V5CMrmDPuX/Tgj0jRX9uHwsCShlLx5JF
 hG9P/Zvsji9NcuZwcCp4y4GCFohUYNEZ4OuCIpLvOXZ6HBUabMdrvf5yEusPqgwsz+UF4wseg
 kIHdbM5dzX/j/9GXUI9tZkRIRrYtTYka6pLyIgmf7Y3WjkSLF93q6uu9yX9Ls3Ya5FvhJScZZ
 FxEygmpuw4ckxeSk76HCyIKRlpt0m0KKv2T1SSLl08PI3C147pADUm+0K3zkWWxH7fRaBwcN5
 PCDDfjIxgtf8rVwGPNtfqiK6YxnXVMmK0UNV4FjvMMf2QZF6wFBzunqLtwcd8qQSFcTaPVrfV
 BpeLg1wf4+yMq5hj9tDgbsjLLPmzn4NY4rHJDCwTg/vuEV/5HkzpW4FRRieY3Z+2mg+ikmFcN
 GooG6d7e2gIgwHrf7oPnqJacUa5UWBYfI6wMvsNhXe3QUiiNqkK3C1ULeLaY2QT7JtbdnQQH8
 mRTdoCEaFZaB9LCYXmf3dcHVGSzTiDtoVRW5rtyxLji+qQt6uHjsz1LCv1FelzKPmOqn6Hxo1
 iyv13lUA/wm3epOvlSUdnEAjPgr/uVWnYUHi1joR1uOG6wBCV9r7upBdOGFiAMyxmseXMwsH0
 GTeU9peL/dQWTsOIdKlH5/q6DgUd/nWGy5iCgHA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191130_043152_423179_C281A28F 
X-CRM114-Status: GOOD (  12.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Stefan Wahren <wahrenst@gmx.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

During definition of the CPU thermal zone of BCM283x SoC family there was
a misunderstanding of the meaning "criticial trip point" and the thermal
throttling range of the VideoCore firmware. The latter one takes effect
when the core temperature is between 80 and 85 degree celsius. So the
current critical trip point doesn't make sense, because the
thermal shutdown appears before the firmware has a chance to throttle the
ARM core(s).

Fix these unwanted shutdowns by increasing the critical trip point
to a value which shouldn't be reached with working thermal throttling.

Fixes: 0fe4d2181cc4 ("ARM: dts: bcm283x: Add CPU thermal zone with 1 trip point")
Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
---
 arch/arm/boot/dts/bcm283x.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/bcm283x.dtsi b/arch/arm/boot/dts/bcm283x.dtsi
index 3caaa57..8394916 100644
--- a/arch/arm/boot/dts/bcm283x.dtsi
+++ b/arch/arm/boot/dts/bcm283x.dtsi
@@ -37,7 +37,7 @@

 			trips {
 				cpu-crit {
-					temperature	= <80000>;
+					temperature	= <90000>;
 					hysteresis	= <0>;
 					type		= "critical";
 				};
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
