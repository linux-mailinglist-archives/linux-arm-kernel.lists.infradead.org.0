Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B085179E85
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 05:07:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Yf6j6dzYjhDsq6ZzvIqCWbRL65+PFJg0W/kiz+UzIdg=; b=EDDeTcXw+Vx55N
	jD2/i1FMPOQ919UufNoS5BEgM92D2cO6FurFCdWJgxqeRZ+/FUqr++NyEkdpn3d1i46+UTION0bMa
	3MPAYXy7vGA7HBiupuWSZW4+lbMbB7BARUykAhSsRd09a80yvCjpLZXrWCqQJ2CwgF2oFRx24Swi2
	2UPma3CQMd97lEnXAeX2Xn43lRVN/NVcVmehwjcUTUcTF0HviiMsHJ9R7Z8EmGRlEQFdRzzLngxep
	jld8V9rlzIvzpFZmU+cwvIcQrdhqPfaWxSI+CId0LhAof4JDsLmRUO5nkgHpkBI/6Gal8jLhWoU/d
	FoVsG2/994Xh+XOXmidw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9hnR-0002TM-Hi; Thu, 05 Mar 2020 04:07:41 +0000
Received: from [216.200.240.184] (helo=mailgw01.mediatek.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9hn4-0002Ke-43; Thu, 05 Mar 2020 04:07:19 +0000
X-UUID: dd8c419858984a17811b5601f76128e7-20200304
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=uT3b+HVjGTui2Fg/xFBgMfnNPkFCcTSrdu3yNux9XCE=; 
 b=VdMFZZKYWKpD6uRDAoui/V6wxNaE4o694Vjkv7ZR/mgYhfOWqAY9TsALjAOAxvx89Cgn6jsXPvO/pzmWAggj0o/EZ3Fs3aG3Tnm3YQ+/jRQcJ3DISVX3FvD/Me4fNrUrxVq3gBHuXFdp0STAxVbOH/oEmQ3F8d5ThMhlNsQVGZU=;
X-UUID: dd8c419858984a17811b5601f76128e7-20200304
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 560286909; Wed, 04 Mar 2020 20:07:08 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 4 Mar 2020 20:07:25 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 5 Mar 2020 12:05:03 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 5 Mar 2020 12:06:20 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>
Subject: [PATCH v1 0/4] scsi: ufs: some cleanups and make the delay for host
 enabling customizable
Date: Thu, 5 Mar 2020 12:07:00 +0800
Message-ID: <20200305040704.10645-1-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_200718_168783_B86DCE78 
X-CRM114-Status: UNSURE (   5.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: Stanley Chu <stanley.chu@mediatek.com>, bvanassche@acm.org,
 andy.teng@mediatek.com, chun-hung.wu@mediatek.com, kuohong.wang@mediatek.com,
 linux-kernel@vger.kernel.org, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 matthias.bgg@gmail.com, beanhuo@micron.com,
 linux-arm-kernel@lists.infradead.org, asutoshd@codeaurora.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

This patchset do some cleanups in ufs host driver and make the delay for host enabling customizable
by different controller or vendors.

Stanley Chu (4):
  scsi: ufs: remove init_prefetch_data in struct ufs_hba
  scsi: ufs: use an enum for host capabilities
  scsi: ufs: allow customized delay for host enabling
  scsi: ufs-mediatek: remove delay for host enabling

 drivers/scsi/ufs/ufs-mediatek.c |  2 +
 drivers/scsi/ufs/ufshcd.c       | 21 +++++-----
 drivers/scsi/ufs/ufshcd.h       | 68 ++++++++++++++++++---------------
 3 files changed, 51 insertions(+), 40 deletions(-)

-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
