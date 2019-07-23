Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 277E071BAE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 17:33:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=V5+fl3JCHEQWdeqrpnZn3avNCSZYh76wwTh89cDtc0M=; b=FSOTQi/3yDpq1s
	G54Q9IN2yZSJmyLui6SwdXBHUffe+JnZiIY+cEoN4/xjG7u8vhMsk3a8eCZ8ilLH5pTHBU2pKUuZ3
	9DF2qtpf8cAA/xngcm5hUmwx5zaQUAa0ZaPASv86uT6sSY6NV0k23Paw3A+1RhBavOPOa3AmzpD6h
	rT2LOiDDuhISpCTf6vdKSOHxgV2+Ni2w/djD2+w5qVhCzioz0NTncZmevxJfNMFRvcPXqYakPuPKE
	uM8I6vX+CQrOJyhbr8HG8GOVlifzeFW5Wt+i+QT/2tNhXIALaSXQj+Vs5sEggH0S/p7xL1sqOVxGH
	XQZ84PnnxwaTi2by9QlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpwmr-00049Y-FU; Tue, 23 Jul 2019 15:33:09 +0000
Received: from mail1.bemta24.messagelabs.com ([67.219.250.208])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpwmd-00048Z-G7
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 15:32:56 +0000
Received: from [67.219.251.53] (using TLSv1.2 with cipher
 DHE-RSA-AES256-GCM-SHA384 (256 bits))
 by server-1.bemta.az-c.us-west-2.aws.symcld.net id B9/6F-15262-3A8273D5;
 Tue, 23 Jul 2019 15:32:51 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrHIsWRWlGSWpSXmKPExsXi5LtOQHexhnm
 sQeMeJYuHV/0tVk3dyWKx6fE1VouuXyuZLS7vmsNm8Xf7JhaLF1vELdqOHWN14PDYOesuu8em
 VZ1sHneu7WHz2Lyk3mPjux1MHv1/DTw+b5ILYI9izcxLyq9IYM24cK6RpeAUb8WOPb9ZGxinc
 ncxcnEICaxmlPj7ZS5rFyMnkLOGUeLOVSO4xI/eGewgCTYBE4krM3YydzFycIgIyEuceOINEm
 YWeMIo0bfaHsQWFgiUuL3+Blg5i4CqxOFXV5lAbF4BT4nu2w1gcQkBOYmb5zqZIeKCEidnPmG
 BmCMhcfDFC2aIG9Qk2uZMAFslAbTqb2/ZBEa+WUg6ZiHpWMDItIrRIqkoMz2jJDcxM0fX0MBA
 19DQSNfQ2FzXyMRQL7FKN1mvtFi3PLW4RNdIL7G8WK+4Mjc5J0UvL7VkEyMw2FMKOj/uYGya9
 UbvEKMkB5OSKO+rT2axQnxJ+SmVGYnFGfFFpTmpxYcYZTg4lCR4u9TNY4UEi1LTUyvSMnOAkQ
 eTluDgURLh3aYGlOYtLkjMLc5Mh0idYlSUEuctAUkIgCQySvPg2mDRfolRVkqYl5GBgUGIpyC
 1KDezBFX+FaM4B6OSMC87yHaezLwSuOmvgBYzAS3eq2IGsrgkESEl1cDkWu9pl+T6/sTnbdc+
 LA1M/rvuIacX1x9D4S/5t89pB35qNnSyusD72MtkUuLFtle5grv/zAjKWPWoOjhnjTDTh0eSy
 5jNrhyM1/9WzRripGzSVdhv7K1tN3Wz1p0fui+07q+c1sfife1okGDz3OQXB/xWF+Yw7V/79E
 10Dd+RVO+sbnEr1+u73+q5/dX6r1EaY2ZeZqmi6Rp/PJthpaTMjZMOwV/uTNpw6VX7luv/PJN
 Zzy158fLPTik247B/RfMFln9kPWj2oiYt/9yl8pX+7f1+xRXaf9aVyHE379YTS3rlPW1x3orF
 T6/ddE6/5LR0Qfy+lX3Hr0t1JpWV/H7wLU3sRNVfU9+UzfWr57xWYinOSDTUYi4qTgQAQxHm9
 HEDAAA=
X-Env-Sender: Jose.DiazdeGrenu@digi.com
X-Msg-Ref: server-33.tower-365.messagelabs.com!1563895970!28760!1
X-Originating-IP: [66.77.174.16]
X-SYMC-ESS-Client-Auth: outbound-route-from=pass
X-StarScan-Received: 
X-StarScan-Version: 9.43.9; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 13652 invoked from network); 23 Jul 2019 15:32:51 -0000
Received: from owa.digi.com (HELO MCL-VMS-XCH01.digi.com) (66.77.174.16)
 by server-33.tower-365.messagelabs.com with ECDHE-RSA-AES256-SHA384 encrypted
 SMTP; 23 Jul 2019 15:32:51 -0000
Received: from MTK-SMS-XCH02.digi.com (10.10.8.196) by MCL-VMS-XCH01.digi.com
 (10.5.8.49) with Microsoft SMTP Server (TLS) id 14.3.468.0;
 Tue, 23 Jul 2019 10:32:50 -0500
Received: from DOR-SMS-XCH01.digi.com (10.49.8.99) by MTK-SMS-XCH02.digi.com
 (10.10.8.196) with Microsoft SMTP Server (TLS) id 14.3.468.0; Tue, 23 Jul
 2019 10:32:49 -0500
Received: from localhost.localdomain (10.101.2.92) by dor-sms-xch01.digi.com
 (10.49.8.99) with Microsoft SMTP Server (TLS) id 14.3.468.0; Tue, 23 Jul 2019
 17:32:47 +0200
From: Jose Diaz de Grenu <Jose.DiazdeGrenu@digi.com>
To: <Jose.DiazdeGrenu@digi.com>
Subject: [PATCH 0/2] nvmem: imx-ocotp: allow reads with arbitrary size and
 offset
Date: Tue, 23 Jul 2019 17:32:41 +0200
Message-ID: <1563895963-19526-1-git-send-email-Jose.DiazdeGrenu@digi.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.101.2.92]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_083255_589970_4719CDFB 
X-CRM114-Status: GOOD (  10.59  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [67.219.250.208 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: festevam@gmail.com, s.hauer@pengutronix.de, linux-kernel@vger.kernel.org,
 srinivas.kandagatla@linaro.org, linux-imx@nxp.com, kernel@pengutronix.de,
 shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently the imx-ocotp driver does only allow reading complete OTP words
correcty aligned.

Usually OTP memory is limited, so the fields are stored using as few bits as
possible. This means that a given value rarely uses 32 bits and happens to be
aligned.

Even though the NVMEM API offers a way to define offset and size of each cell
(at bit level) this is not currently usable iwth the imx-ocotp driver, which
forces consumers to read complete words and then hardcode the necessary
shifting and masking in the driver code. 

As an example take the nvmem consumer imx_thermal.c, which reads nvmem cells
as uint32_t words:

	ret = nvmem_cell_read_u32(&pdev->dev, "calib", &val);
	if (ret)
		return ret;

	ret = imx_init_calib(pdev, val);
	if (ret)
		return ret;

	ret = nvmem_cell_read_u32(&pdev->dev, "temp_grade", &val);
	if (ret)
		return ret;
	imx_init_temp_grade(pdev, val);
	
but needs to later adjust the values in code:

	// Inside imx_init_calib()
	data->c1 = (ocotp_ana1 >> 9) & 0x1ff;

	// Inside imx_init_temp_grade()
	switch ((ocotp_mem0 >> 6) & 0x3) {
	
This patch adjusts the driver so that reads can be requested using any size
and offset. Then, for example the nvmem cell "calib" could use the 'bits'
property to specify size and offset in bits, removing the need to mask and
shift in the driver code.

This is specially useful when several drivers use the same nvmem cell and when
the specific size and offset of a OTP value depends on a hardware version.

Jose Diaz de Grenu (2):
  nvmem: imx-ocotp: use constant for write restriction
  nvmem: imx-ocotp: allow reads with arbitrary size and offset

 drivers/nvmem/imx-ocotp.c | 34 ++++++++++++++++------------------
 1 file changed, 16 insertions(+), 18 deletions(-)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
