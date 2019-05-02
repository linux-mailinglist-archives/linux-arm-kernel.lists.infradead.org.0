Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD4CB118E7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 14:21:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IiGwtFrjvJe562r1YLDsGib4kun0DzyuzjxxWfj7pAo=; b=IIFVP7N4h3dWlh
	SKFUV+CITFbwI4W+ojqjM1luBdFBPSTtT+tyVyT7vlo3lVGgIXf3x2tyyKVsnoVKlMspOiWkVpl5r
	fMZCwkvZtzoGfDhyMqojA33SxDG+Xu33Io/oX0RFZqKD0jfjyLhbxgMjU9FlGalkwvCLe7qDpu5tT
	nOW43LlpO14gURSDN+j9D/tb/UFi7VkHD8zDBgi2/Ae2IeZB76trAEDAlzJQM8pEW60WLjOfXHAIf
	04t6MhdP6zQykOLqOOfb67IaendQwrrrGcKXMgQkzJFmPYPg6w8oyALy59z49YU8X1jbGbzXbwk2l
	uhlRoZhowtw/0v3UTtMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMAiI-0007dz-9H; Thu, 02 May 2019 12:21:22 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMAiB-0007dU-KO
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 12:21:16 +0000
Received: by mail-lf1-x142.google.com with SMTP id o16so1709913lfl.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 May 2019 05:21:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=YoRzopPLw6P5ilGOLkCCwo6ncg+nRGCaqA3qJdWLPkk=;
 b=pOtaltYCjij+nwgRjIdtwgj9znTc9Rk3LcgVKAbP4FdMpQNoR+PQmyu3tG86uIJDJd
 /XSjQ1WAq1cPH/U3LeAPAPTg+5lei9AopWETGpHqzFzDjn56gB9IkqBrR6sL0pHTTxxM
 2h3GwE5cRxD82OJAtLDkyFxGjM8YGwwSdIv9UVdC0nvxzinS6Vv2gKseB53tf1rQL3Dl
 pin8IOhpRJ93QII/OEtxdqjh0TKcKv153cc1xQhuaKFfLvnG9z9fQOXozQUdAG5bLmvA
 lX4bY/InhTH5oo+J31LjWsmXqcVRb8oQeD12FlDI0uGst880z1QS0Noeu7iRjOrNKQEM
 2eGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=YoRzopPLw6P5ilGOLkCCwo6ncg+nRGCaqA3qJdWLPkk=;
 b=AJCS6h3ai2qq3i0guBcN+4h/GZ3mu9eOwmoPCkLVOzHiCQp+LSeu3nbvxh3ajXZtiy
 b+s1Sz3TRHe9qv+ZfLQBeHlXB0xGbZN3RXnPD+6MHRCZI2i3iaARo3XlTeo+RoRYAQf0
 oZw8RvBU0/xVy+bcMaJs4/QpgQ8UdFq1BR4USUqxSION6fdAgXdTwPrKy8rQs+akw/1j
 o1SpsNlB+hW+7H4ntGhg2Mgbsw6Mkcpd4bl09dBdMu7mdrCfnrrgAVnCmbrlAMaz6yXA
 9FMs9+IqSXhjr/I81h90uL4mBldTJ4uTv09hIFJsNForMNg959AuRgYk4xxV0G8BEwma
 YFpA==
X-Gm-Message-State: APjAAAX7n7Ol1/rBaNzxt3RghBox7JHLSttTAQIHjcb+GY4ZLzZhdHux
 VGBF5EQ65mzl2wv/uIEG0spAdmW9lPFtQZ+Q1h2C/ghUT+g=
X-Google-Smtp-Source: APXvYqyqBIGxYazeIZ6OVG3oD6l17c7c09dmf9ZVSVOxS3YSB4C1RHmrYVvtN7ivy/b4hZFSt817dsEZ1InDgfl70fc=
X-Received: by 2002:a19:f001:: with SMTP id p1mr1972072lfc.27.1556799673301;
 Thu, 02 May 2019 05:21:13 -0700 (PDT)
MIME-Version: 1.0
References: <20190430074730.8236-1-sebastien.szymanski@armadeus.com>
In-Reply-To: <20190430074730.8236-1-sebastien.szymanski@armadeus.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 2 May 2019 09:21:08 -0300
Message-ID: <CAOMZO5DTAvdxbb8UQufDTNWgkCj55OzXn=SZFXRocUOnkMY55Q@mail.gmail.com>
Subject: Re: [PATCH 1/2] ARM: dts: imx6ul: Add csi node
To: =?UTF-8?Q?S=C3=A9bastien_Szymanski?= <sebastien.szymanski@armadeus.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_052115_691355_1AC14B13 
X-CRM114-Status: UNSURE (   8.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 <devicetree@vger.kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgU8OpYmFzdGllbiwKCk9uIFR1ZSwgQXByIDMwLCAyMDE5IGF0IDQ6NDcgQU0gU8OpYmFzdGll
biBTenltYW5za2kKPHNlYmFzdGllbi5zenltYW5za2lAYXJtYWRldXMuY29tPiB3cm90ZToKCj4g
KyAgICAgICAgICAgICAgICAgICAgICAgY3NpOiBjc2lAMjFjNDAwMCB7Cj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBjb21wYXRpYmxlID0gImZzbCxpbXg2dWwtY3NpIiwgImZzbCxp
bXg3LWNzaSI7CgpBZnRlciBhZGRpbmcgImZzbCxpbXg2dWwtY3NpIiB0bwpEb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvbWVkaWEvaW14Ny1jc2kudHh0OgoKUmV2aWV3ZWQtYnk6IEZh
YmlvIEVzdGV2YW0gPGZlc3RldmFtQGdtYWlsLmNvbT4KCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
