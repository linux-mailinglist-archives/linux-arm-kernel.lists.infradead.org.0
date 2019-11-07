Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 385CFF2BAB
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 10:59:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rd0FRvNBdnGeJF55+3TpKT2Z8O9dALw/Z90NfIqwXq8=; b=hVdHFvO5NV1JCy
	LtDSnJl/noUTlJXZ70QzcnHK11wuxyuK1ssuXcgt9Oqpeg/v3ttC7jdj4l5ys2EzkUmwwLaIFBPcW
	MMaKLlm6kTeCT1YEU/BGKEx1Ipmvxv84TsZZirpODuYTPk46Vz39FZ8/7RZ5K9a9rpkBt5B9zqy1k
	vQ0e0mUGIRj2tHww4q2m8sakZP91UKYUon1tAcb8TMjAal0RvIoPvvn4DMxIUxvcqL8TC3PEMWErI
	me4amUO1b/tfO47rPaT/StfzNJ6bGWRHi5e5ReBeL3w2WODmI6SoooCS/tIFJGEPkBUQ7a6RA51zm
	OEqHfhdE5uqnwBsKr2OQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSeZS-0006DZ-C3; Thu, 07 Nov 2019 09:59:18 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSeZ6-0005zw-6u
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 09:58:58 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xA79wGNs011951; Thu, 7 Nov 2019 10:58:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=hbVDWXJ00zmSGkN7uOVCNrHuL1TPN4pH9x85Y3/XZCw=;
 b=fCpAJnXenkQkx5e+gKEYTy5J7ew3c0UrRs2d8pPiknmB3AorZG1sPVDJq5Ll5X9SHDaO
 t78tOySt/RflVWyEbnOQ9l51r6ko/xpBtctpH+4EjttVbSn0zCMX6SNBS9El/D94CvSf
 zNl4XU+88NObspeGUao5fmBhP5ysWmMrl+cHApxCDSYcA4SgupgG0v4+CG22Hmqa8RDL
 Iq3YUX4VEPB+n255e3E/2YZKf9ri0QvYVk+pcO7A/OyKrfQRxUoXn/90Vuwz69Z5nCjg
 3h8hym6taUaMsCJrJSpPm25DmIcNif/josHnx9lgc8qrU5G60pcqSE83PSn/RdK8fGjF /w== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2w41vgvey9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 07 Nov 2019 10:58:48 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 43D4210002A;
 Thu,  7 Nov 2019 10:58:47 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node3.st.com [10.75.127.18])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 326122AA4DB;
 Thu,  7 Nov 2019 10:58:47 +0100 (CET)
Received: from SFHDAG6NODE3.st.com (10.75.127.18) by SFHDAG6NODE3.st.com
 (10.75.127.18) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 7 Nov
 2019 10:58:46 +0100
Received: from SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6]) by
 SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6%20]) with mapi id
 15.00.1473.003; Thu, 7 Nov 2019 10:58:46 +0100
From: Patrice CHOTARD <patrice.chotard@st.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Mauro Carvalho Chehab
 <mchehab@kernel.org>
Subject: Re: [PATCH] media: c8sectpfe: no need to check return value of
 debugfs_create functions
Thread-Topic: [PATCH] media: c8sectpfe: no need to check return value of
 debugfs_create functions
Thread-Index: AQHVlUi4fopZoSb/7UygbHVOP1JV06d/aI4A
Date: Thu, 7 Nov 2019 09:58:46 +0000
Message-ID: <e27c1351-3ca8-ccf3-bcb6-adab33be8889@st.com>
References: <20191107085238.GA1285658@kroah.com>
In-Reply-To: <20191107085238.GA1285658@kroah.com>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.48]
Content-ID: <A8395E0710B8C84BB8416781D9DD88E0@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-07_02:2019-11-07,2019-11-07 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_015856_937436_90850F13 
X-CRM114-Status: GOOD (  21.11  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi

On 11/7/19 9:52 AM, Greg Kroah-Hartman wrote:
> When calling debugfs functions, there is no need to ever check the
> return value.  The function can work or not, but the code logic should
> never do something different based on this.
>
> Cc: Patrice Chotard <patrice.chotard@st.com>
> Cc: Mauro Carvalho Chehab <mchehab@kernel.org>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-media@vger.kernel.org
> Cc: linux-kernel@vger.kernel.org
> Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> ---
>  .../sti/c8sectpfe/c8sectpfe-debugfs.c         | 26 +++----------------
>  1 file changed, 3 insertions(+), 23 deletions(-)
>
> diff --git a/drivers/media/platform/sti/c8sectpfe/c8sectpfe-debugfs.c b/drivers/media/platform/sti/c8sectpfe/c8sectpfe-debugfs.c
> index 8f0ddcbeed9d..301fa10f419b 100644
> --- a/drivers/media/platform/sti/c8sectpfe/c8sectpfe-debugfs.c
> +++ b/drivers/media/platform/sti/c8sectpfe/c8sectpfe-debugfs.c
> @@ -225,36 +225,16 @@ static const struct debugfs_reg32 fei_sys_regs[] = {
>  
>  void c8sectpfe_debugfs_init(struct c8sectpfei *fei)
>  {
> -	struct dentry		*root;
> -	struct dentry		*file;
> -
> -	root = debugfs_create_dir("c8sectpfe", NULL);
> -	if (!root)
> -		goto err;
> -
> -	fei->root = root;
> -
>  	fei->regset =  devm_kzalloc(fei->dev, sizeof(*fei->regset), GFP_KERNEL);
>  	if (!fei->regset)
> -		goto err;
> +		return;
>  
>  	fei->regset->regs = fei_sys_regs;
>  	fei->regset->nregs = ARRAY_SIZE(fei_sys_regs);
>  	fei->regset->base = fei->io;
>  
> -	file = debugfs_create_regset32("registers", S_IRUGO, root,
> -				fei->regset);
> -	if (!file) {
> -		dev_err(fei->dev,
> -			"%s not able to create 'registers' debugfs\n"
> -			, __func__);
> -		goto err;
> -	}
> -
> -	return;
> -
> -err:
> -	debugfs_remove_recursive(root);
> +	fei->root = debugfs_create_dir("c8sectpfe", NULL);
> +	debugfs_create_regset32("registers", S_IRUGO, fei->root, fei->regset);
>  }
>  
>  void c8sectpfe_debugfs_exit(struct c8sectpfei *fei)

Reviewed-by: Patrice Chotard <patrice.chotard@st.com>

Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
