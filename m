Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8259F180E99
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 04:36:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=T7f7CgmyTnER2jhWPn8Ik1hzbiUuS0zD7u2Bt5SLx0E=; b=I0Prc05oMJTGJS
	XluSfRyfaucCo2VCOQoTbBK4fmo8uKAGWJq7cO58oPA0uXmWplbWxaE/qEiDgfdDxolAacp6K9EdH
	jma1/AUo3beh6zYKPlm4/zu4zzZFsGFUym/n3tj2KRM4XzBWVQxz0NJ4FfjMw73l+yXnM6F/UFYZE
	NNBecOXmA8nsGgxDDprKHpNOXxKhodVhTW1+wI6K05UMXh7PSNedZVDFizxLSPBKbvZwJGcmQM0pg
	fhF89xuOHbi94iLln+GUozoKjfcncMHDLf6Y/dIFP5PDO/nTmmYhO/Wrl53IvGL1QnLjfrTb1Z4yE
	6n0Jq9KWH6cih1XF92zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBsAb-0001kC-EY; Wed, 11 Mar 2020 03:36:33 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBsAS-0001iq-At; Wed, 11 Mar 2020 03:36:25 +0000
X-UUID: ed183455145b4cb0bd93342115f93a52-20200310
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=DPJUQnv87RbzN8dm0Mgk9azwyYcGOhnHBbgcNu92ga0=; 
 b=iERI+jak/HtMasoCvWXvUVw192XtrcERlG2u980a1zpgERP8wFU7foQ3UYStKaKb9IoBEKp51wPndZ01t5tthjGJZhPYwV/6NEBtFSh0vg54X+sRXqkXP66IJgZtStHfuirh/KnKuMIsW7yKirTbIWqZYlzOA2upjLNd0dhkwXU=;
X-UUID: ed183455145b4cb0bd93342115f93a52-20200310
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <erin.lo@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 211004139; Tue, 10 Mar 2020 19:36:18 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 10 Mar 2020 20:36:23 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 11 Mar 2020 11:35:17 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 11 Mar 2020 11:35:23 +0800
From: Erin Lo <erin.lo@mediatek.com>
To: <linux-firmware@kernel.org>
Subject: pull request: linux-firmware: Create Mediatek MT8183 SCP firmware 
Date: Wed, 11 Mar 2020 11:36:01 +0800
Message-ID: <20200311033602.31905-1-erin.lo@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_203624_386695_71F3659B 
X-CRM114-Status: UNSURE (   7.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 linux-remoteproc@vger.kernel.org, sj.huang@mediatek.com,
 linux-mediatek@lists.infradead.org, shawnku@google.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 0148cfefcbf98898ca65bb26d9d7d638b30e211d:

  Merge https://github.com/rjliao-qca/qca-btfw (2020-03-02 08:08:15 -0500)

are available in the Git repository at:

  https://github.com/erinlo/linux_fw_scp v12573.77

for you to fetch changes up to a52150d8e1fe65994464b15ea162bdc89ba61ce8:

  mediatek: Add mt8183 SCP firmware (2020-03-11 10:36:45 +0800)

----------------------------------------------------------------
Erin Lo (1):
      mediatek: Add mt8183 SCP firmware

 mediatek/mt8183/scp.img | Bin 0 -> 1027104 bytes
 1 file changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 mediatek/mt8183/scp.img

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
