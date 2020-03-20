Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8BEC18C80B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 08:14:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nn6BzzEFBQLMPWTuX8irK65K4h/IXR7+bHczmFUWMXc=; b=KKmynC5mrmCeC4
	GsqUyZ1ZwB32aP7reT3f4Dm6RqvO5slgvpiIaKJdI4arpDB54TMsxKhZI1RJaMEPjxsans7XP8udO
	91KpabqMAldMqemcXE7cjxCRILfIMRj7nYn0/Bo9THVGr/a2FDBQf8Ec8ah5msGhsm85NZzJ38zDr
	PzQGbOvMt0toYTJNvfC7Dny0hu33pEGm3l1G5lEhFLfH/nGsfBXa53cihs6B84xkLLtdCkewDy8Lk
	ZP3wyJQuZXvP4crIFLFxllCXMYfJ2UbyiKfBNjoRm0AjBAg7q1b7rUl8Kk7xL6+gJjN6f2/OGaPUo
	BP+ENHfk22brtAu2g3RQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFBqr-0004dT-HB; Fri, 20 Mar 2020 07:13:53 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFBqi-0004c2-Dv; Fri, 20 Mar 2020 07:13:46 +0000
X-UUID: ed32d557a3d94f8b99cceb813e0b93a4-20200319
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=k58APG24uidmU5v8KtptUOGOeNfiLEWeS+xyzZ6fKUI=; 
 b=iQ5dSost9Wnho3MFg3aDcFx5NtUWxkTmfe3IuhR1yUa6k0WtBY+nXG7GX5BeU5nqaHFKmoUCyHUvm5qfWIoPRi6Ayw4aRQg2fHtOnaLwGJw78oH138t61PAQw76pjuIrUwPwEJBqWH2T5pm2Qk3uliHu0jroGLlC6n+EcPX4ZDg=;
X-UUID: ed32d557a3d94f8b99cceb813e0b93a4-20200319
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <erin.lo@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 617265054; Thu, 19 Mar 2020 23:13:38 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 20 Mar 2020 00:14:02 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 20 Mar 2020 15:12:36 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 20 Mar 2020 15:13:37 +0800
From: Erin Lo <erin.lo@mediatek.com>
To: <linux-firmware@kernel.org>
Subject: pull request v2: linux-firmware: Create Mediatek MT8183 SCP firmware 
Date: Fri, 20 Mar 2020 15:11:42 +0800
Message-ID: <20200320071143.4225-1-erin.lo@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_001344_479601_63261857 
X-CRM114-Status: UNSURE (   6.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: menghui.lin@mediatek.com, maoguang.meng@mediatek.com,
 srv_heupstream@mediatek.com, drinkcat@google.com, yunfei.dong@mediatek.com,
 erin.lo@mediatek.com, linux-remoteproc@vger.kernel.org, sj.huang@mediatek.com,
 linux-mediatek@lists.infradead.org, shawnku@google.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, maintainers,
Changes since v1:
 - Add information to WHENCE

The following changes since commit 0148cfefcbf98898ca65bb26d9d7d638b30e211d:

  Merge https://github.com/rjliao-qca/qca-btfw (2020-03-02 08:08:15 -0500)

are available in the Git repository at:

  https://github.com/erinlo/linux_fw_scp v12573.77

for you to fetch changes up to 3c213aa59661c4641f0c2166a315140ac0445230:

  mediatek: Add mt8183 SCP firmware (2020-03-20 14:37:49 +0800)

----------------------------------------------------------------
Erin Lo (1):
      mediatek: Add mt8183 SCP firmware

 WHENCE                  |  18 ++++++++++++++++++
 mediatek/mt8183/scp.img | Bin 0 -> 1027104 bytes
 2 files changed, 18 insertions(+)
 create mode 100644 mediatek/mt8183/scp.img

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
