Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DC981272C3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 02:25:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Zw9Cw9q8vPw+BMj74Bqp+RsS0DRvOd+ykQH9BMfRIA=; b=WnRsosOvAmTni2
	KVgy/6dc+0XNhj2Nf+fYEuCySgStgXKGDfs/oS/ZqUl8on+Chg4KBmnxTjVhi9YebvLgEKrLnGcG0
	1X+io9RecCYEMpM8c6T9iKC8xWXzHnKEtGgPycgD342Cm63bUO7E+q0nlkmaYHsqk6SxDZU5IBbBk
	H0A6gwI749YH+LvqHlqrvbAPByH41I/LPcEfvzzV6gv09zmIBLaTRJXRDsqUW9r5HKaS7SfsXtVzQ
	QSQ3ZnJAmQGomhpgDbCzExPiVgLl1UKoWGVI9L8L3Y5Z/WZpNqmAuUTZlJj3myDBFR6N5LB9poq2S
	HSbXgvvsN2FrU1Mg5nxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii731-0008QM-Eg; Fri, 20 Dec 2019 01:25:43 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii72p-0008P7-8q; Fri, 20 Dec 2019 01:25:32 +0000
X-UUID: 1a6aff08d9a14986ac75e4c846c0eeae-20191219
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=6G3dtw5AJylg2abavZ7E0QIWsi21fn4ZfWIqnuXqxBM=; 
 b=qcUct+bDYeVS1aaDJcL6m6qACEsT2L7zyOsMEz+hx9bn+mGHjFgZjnrGiFi7NNGRjSrAKdyGvyjkqcpLH/rd3n21mHWONU5YYQz4x2mzccQGJEEIk8pms+mCMtX2CFpwRZRf8Pc6dqujWB3Mr7Kha3JUXOGmv+F2mRzBI+EQ2V8=;
X-UUID: 1a6aff08d9a14986ac75e4c846c0eeae-20191219
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 490268563; Thu, 19 Dec 2019 17:25:29 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 19 Dec 2019 17:25:47 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 20 Dec 2019 09:24:45 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 20 Dec 2019 09:25:18 +0800
Message-ID: <1576805118.13056.31.camel@mtkswgap22>
Subject: Re: [PATCH v1 0/4] scsi: ufs-mediatek: provide power management
From: Stanley Chu <stanley.chu@mediatek.com>
To: "Martin K. Petersen" <martin.petersen@oracle.com>
Date: Fri, 20 Dec 2019 09:25:18 +0800
In-Reply-To: <yq1tv5vc3ci.fsf@oracle.com>
References: <1576224695-22657-1-git-send-email-stanley.chu@mediatek.com>
 <yq1tv5vc3ci.fsf@oracle.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: A67BF4AF579820BA1BD2EC944F6F15F073CC96FDD18A0D00DFAB356298EA55922000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_172531_321504_3E40926C 
X-CRM114-Status: UNSURE (   9.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-scsi@vger.kernel.org, andy.teng@mediatek.com, jejb@linux.ibm.com,
 chun-hung.wu@mediatek.com, kuohong.wang@mediatek.com,
 linux-kernel@vger.kernel.org, avri.altman@wdc.com,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 alim.akhtar@samsung.com, matthias.bgg@gmail.com, pedrom.sousa@synopsys.com,
 linux-arm-kernel@lists.infradead.org, beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Martin,

Thank you so much and sorry for your inconvenience.

I was based on the latest linux-next commit in my submission time. I
will be more careful and use your "queue" branch instead for submission.

BTW, sorry again because this series actually require a header file
present by below patch in another series which was submitted earlier
than this series,

"soc: mediatek: add header for SiP service interface"

Otherwise missing header "include/linux/soc/mediatek/mtk_sip_svc.h" will
cause build error if MediaTek UFS driver is enabled.

Hope "soc: mediatek: add header for SiP service interface" could be
merged soon, or please rollback this series first if build error happens
and wait until above patch is merged.

To prevent this error, I shall merge both series and provide a new
combined series. If you want me to do so, please kindly let me know.
Sorry for this again.

On Thu, 2019-12-19 at 18:17 -0500, Martin K. Petersen wrote:
> Stanley,
> 
> > The patch set provides power management on MediaTek Chipsets by
> 
> Had to apply this by hand. Please make sure you prepare patch
> submissions against my "queue" branch.
> 

Thanks,
Stanley


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
