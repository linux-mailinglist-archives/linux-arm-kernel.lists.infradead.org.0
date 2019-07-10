Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 419526434A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 10:04:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sEvBkt5Yceg/t/8h752uPCQAkJU6/khuvwjrxo7nD+k=; b=b4FqRy5pTYKurv
	en16gLABHfmpOMnfvm+OeQ8G/cSrex2+QIeW62Pxf/FREaQWh6munVo7j1+3Td/QbC4DTw0w/8L1S
	Gfkrf9xcoZm0+z23iPJ49VPl2ilY9enjExcaZDX+c4De+HWerfG0frFeMieafH3fXpmEgZxSWWVEd
	0/SosDUSsSwfgAH/GgWhjxMYYbhpwNilJzfZjR2+yy9aL7tflFjsw9dpzglv1ClEsxHmvZEWEaNAt
	5gu0ocUirlGE2gckrmoe3ncdB+pD3TaWTfcLfq1pWTLHhuq/3/Jo+PPfo8fBL/vU01eQH4gfxmyQT
	XipR0HeIxXr4+nH4NANA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hl7ap-0000L2-Tt; Wed, 10 Jul 2019 08:04:48 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hl7aR-0000JI-Lz; Wed, 10 Jul 2019 08:04:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1562745864; x=1594281864;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NdExXsIqgnRXPQ3YwnSjlxMhiIU+Nn3T/ozx7OirsDY=;
 b=FMigpQJDmWyQZNPe9oS//23jH+OXHcfqR4GRHZy3dqbAagc5jFa64kbv
 nizfPju8/SWs9rFpx9Se8htTzQcUiaBmefF9i0M4rPRXJIZgcjMA0V+eU
 Q9J8UsAdzo8ubmlMomIz6MPlo4EdFOy51hQnDThI4rKPMyW1hhRo2qP/+
 dzZrtfSGwGkQPq8uq6R+tMw0B5V5UlXEUurAIWJXKcHcrzdMRmqOb529R
 zHEt+1Jb4y77wYAlPdOsLNwQSknnuP5P+e0YPydqy64LuDvf81YtBQRkE
 +Pn5YFFdwijE/7vLsilXCH5Ip/6S3oT2jsDw/tyMPKfoCrYN7fXZrLLnY g==;
IronPort-SDR: 1mcjiSYMed1KTjXaW9iAq5uQhjPMW8hIXlkdVjda20PmhlS5OB8u2qrlPkruf0xuRNyYYnvimY
 Iia+eGFdXyWjw+o4WXov8u0Ri99O/TEowvsy/HFJ4grI/z5pQpK/J73pmz0xHM61P2FXLeV5Jl
 C2lhUuhl5peWx2/p+n1uze6LqqTF1OdFXeSmxbHVpEZi8+FxmT7oUiRxssDzlpT79LjRHpIcW7
 bhnDK/9CWEG4P64B1IQVOZxPR7gtE3lYxeOrw1mVNUJNU4dm4emgaR3evbg9EFXJErm7VQkBB9
 Kso=
X-IronPort-AV: E=Sophos;i="5.63,473,1557158400"; d="scan'208";a="117455242"
Received: from mail-by2nam03lp2057.outbound.protection.outlook.com (HELO
 NAM03-BY2-obe.outbound.protection.outlook.com) ([104.47.42.57])
 by ob1.hgst.iphmx.com with ESMTP; 10 Jul 2019 16:04:19 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=D+QOPysLcGtLB80XrLrP3cGKpTeWJKY69c2Pyt9eKjM=;
 b=j/tyWQZAQLBMqXolhDzg+M97qTU7nYwl3bxdX2WAoannXbKLJOSAEVkPg5iiCjSp63yJRVse105gbBSizidwwMkTBO4uK2COEKuka9ArVmmpK5N4iwug2NqIwGMi72c2j6meO6fwLnvgkf637/e8YYa5SZqBNuwZm3nFMAdGkYw=
Received: from SN6PR04MB4925.namprd04.prod.outlook.com (52.135.114.82) by
 SN6PR04MB4192.namprd04.prod.outlook.com (52.135.71.142) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.18; Wed, 10 Jul 2019 08:04:17 +0000
Received: from SN6PR04MB4925.namprd04.prod.outlook.com
 ([fe80::541e:d74b:98bf:c319]) by SN6PR04MB4925.namprd04.prod.outlook.com
 ([fe80::541e:d74b:98bf:c319%5]) with mapi id 15.20.2052.019; Wed, 10 Jul 2019
 08:04:17 +0000
From: Avri Altman <Avri.Altman@wdc.com>
To: Stanley Chu <stanley.chu@mediatek.com>, "linux-scsi@vger.kernel.org"
 <linux-scsi@vger.kernel.org>, "martin.petersen@oracle.com"
 <martin.petersen@oracle.com>, "alim.akhtar@samsung.com"
 <alim.akhtar@samsung.com>, "pedrom.sousa@synopsys.com"
 <pedrom.sousa@synopsys.com>
Subject: RE: [PATCH v2 4/4] scsi: ufs: Add history of fatal events
Thread-Topic: [PATCH v2 4/4] scsi: ufs: Add history of fatal events
Thread-Index: AQHVNt85T9JN724cDky22en0hJXnWqbDd0eA
Date: Wed, 10 Jul 2019 08:04:17 +0000
Message-ID: <SN6PR04MB4925D29D16757A57B25DE369FCF00@SN6PR04MB4925.namprd04.prod.outlook.com>
References: <1562736017-29461-1-git-send-email-stanley.chu@mediatek.com>
 <1562736017-29461-5-git-send-email-stanley.chu@mediatek.com>
In-Reply-To: <1562736017-29461-5-git-send-email-stanley.chu@mediatek.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Avri.Altman@wdc.com; 
x-originating-ip: [212.25.79.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 338dddaf-f9e5-44e1-981d-08d7050d34fb
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:SN6PR04MB4192; 
x-ms-traffictypediagnostic: SN6PR04MB4192:
x-microsoft-antispam-prvs: <SN6PR04MB419294D58F1526F713745195FCF00@SN6PR04MB4192.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0094E3478A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(396003)(39860400002)(376002)(346002)(136003)(199004)(189003)(7696005)(76176011)(33656002)(6246003)(9686003)(52536014)(99286004)(229853002)(53936002)(55016002)(66066001)(6436002)(2501003)(5660300002)(6116002)(3846002)(8676002)(2201001)(66946007)(7736002)(186003)(446003)(256004)(81156014)(81166006)(476003)(71190400001)(71200400001)(316002)(11346002)(14444005)(86362001)(54906003)(478600001)(110136005)(14454004)(66476007)(25786009)(486006)(66556008)(68736007)(4326008)(6506007)(76116006)(66446008)(64756008)(74316002)(102836004)(2906002)(7416002)(8936002)(305945005)(26005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB4192;
 H:SN6PR04MB4925.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: sxeCBo9KidrsWu45Q22nx2exvQ0NnJXsEx1X4TYsT3xkLmW4bXBQPH4qVJxM1g3q/OvD5wPyj9im3sOzvi3yWz1nivrLI4cfU2A6P3qmDt8w8fVVT7bAq2vrvCf1l3KkoDVruyX2uvY222DMCmmw+NsCy7LqMsVjzK1Yf5etHKYdM42r6ZqczWY101DkD2681HzoXm7zoVsK8bvaUUqnbnwShSO4F9XxAByqEWxXPtuYcbzYdLKZA2NfPNLkFy9ykcwcT/DZ9h998mhIYps38BEs+3y5Z888FK9qAWyddup+BzuJmzP08t5XMA5AVLJtdW5GlUE2r9Lt/uUpicRIVOgkfrzaxJNc3KL81+nsXblexrpo10MMN33oV7GTPd13TUBhutJJLwGvawp7wjPUrJPEOEWuG8GKryFBoZDQ2Ro=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 338dddaf-f9e5-44e1-981d-08d7050d34fb
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jul 2019 08:04:17.6072 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Avri.Altman@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB4192
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_010423_836763_D13C8D19 
X-CRM114-Status: GOOD (  19.87  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "sthumma@codeaurora.org" <sthumma@codeaurora.org>,
 "marc.w.gonzalez@free.fr" <marc.w.gonzalez@free.fr>,
 "andy.teng@mediatek.com" <andy.teng@mediatek.com>,
 "chun-hung.wu@mediatek.com" <chun-hung.wu@mediatek.com>,
 "kuohong.wang@mediatek.com" <kuohong.wang@mediatek.com>,
 "peter.wang@mediatek.com" <peter.wang@mediatek.com>,
 "evgreen@chromium.org" <evgreen@chromium.org>,
 "subhashj@codeaurora.org" <subhashj@codeaurora.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "ygardi@codeaurora.org" <ygardi@codeaurora.org>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "beanhuo@micron.com" <beanhuo@micron.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Stanley,

> 
> Currently only "interrupt-based" errors have their own history,
> however there are "non-interrupt-based" errors which may be
> fatal also needing history to improve debugging or help know
> the health status of UFS devices.
> 
> For example,
> - Link startup fail
> - Suspend fail
> - Resume fail
> - Task or request abort event
> 
> This patch tries to add those failed events by existed UFS error
> history mechanism.
> 
> Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
> ---
>  drivers/scsi/ufs/ufshcd.c | 36 +++++++++++++++++++++++++++---------
>  drivers/scsi/ufs/ufshcd.h | 10 ++++++++++
>  2 files changed, 37 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
> index a46c3d2b2ea3..969128a731e1 100644
> --- a/drivers/scsi/ufs/ufshcd.c
> +++ b/drivers/scsi/ufs/ufshcd.c
> @@ -432,6 +432,14 @@ static void ufshcd_print_host_regs(struct ufs_hba
> *hba)
>  	ufshcd_print_err_hist(hba, &hba->ufs_stats.fatal_err, "fatal_err");
>  	ufshcd_print_err_hist(hba, &hba->ufs_stats.auto_hibern8_err,
>  			      "auto_hibern8_err");
> +	ufshcd_print_err_hist(hba, &hba->ufs_stats.task_abort_err,
> +			      "task_abort");
> +	ufshcd_print_err_hist(hba, &hba->ufs_stats.link_startup_err,
> +			      "link_startup_fail");
> +	ufshcd_print_err_hist(hba, &hba->ufs_stats.suspend_err,
> +			      "suspend_fail");
> +	ufshcd_print_err_hist(hba, &hba->ufs_stats.resume_err,
> +			      "resume_fail");
> 
>  	ufshcd_print_clk_freqs(hba);
> 
> @@ -4329,6 +4337,14 @@ static inline int
> ufshcd_disable_device_tx_lcc(struct ufs_hba *hba)
>  	return ufshcd_disable_tx_lcc(hba, true);
>  }
> 
> +static void ufshcd_update_reg_hist(struct ufs_err_reg_hist *reg_hist,
> +				   u32 reg)
> +{
> +	reg_hist->reg[reg_hist->pos] = reg;
> +	reg_hist->tstamp[reg_hist->pos] = ktime_get();
> +	reg_hist->pos = (reg_hist->pos + 1) % UFS_ERR_REG_HIST_LENGTH;
> +}
> +
>  /**
>   * ufshcd_link_startup - Initialize unipro link startup
>   * @hba: per adapter instance
> @@ -4356,6 +4372,8 @@ static int ufshcd_link_startup(struct ufs_hba
> *hba)
> 
>  		/* check if device is detected by inter-connect layer */
>  		if (!ret && !ufshcd_is_device_present(hba)) {
> +			ufshcd_update_reg_hist(&hba-
> >ufs_stats.link_startup_err,
> +					       0);
>  			dev_err(hba->dev, "%s: Device not present\n",
> __func__);
>  			ret = -ENXIO;
>  			goto out;
> @@ -4366,8 +4384,11 @@ static int ufshcd_link_startup(struct ufs_hba
> *hba)
>  		 * but we can't be sure if the link is up until link startup
>  		 * succeeds. So reset the local Uni-Pro and try again.
>  		 */
> -		if (ret && ufshcd_hba_enable(hba))
> +		if (ret && ufshcd_hba_enable(hba)) {
> +			ufshcd_update_reg_hist(&hba-
> >ufs_stats.link_startup_err,
> +					       (u32)ret);
>  			goto out;
> +		}
>  	} while (ret && retries--);
> 
>  	if (ret)
Here also link startup fails...

> @@ -5350,14 +5371,6 @@ static void ufshcd_err_handler(struct
> work_struct *work)
>  	pm_runtime_put_sync(hba->dev);
>  }
> 
> -static void ufshcd_update_reg_hist(struct ufs_err_reg_hist *reg_hist,
> -				   u32 reg)
> -{
> -	reg_hist->reg[reg_hist->pos] = reg;
> -	reg_hist->tstamp[reg_hist->pos] = ktime_get();
> -	reg_hist->pos = (reg_hist->pos + 1) % UFS_ERR_REG_HIST_LENGTH;
> -}
> -
>  /**
>   * ufshcd_update_uic_error - check and set fatal UIC error flags.
>   * @hba: per-adapter instance
> @@ -6043,6 +6056,7 @@ static int ufshcd_abort(struct scsi_cmnd *cmd)
>  	 */
>  	scsi_print_command(hba->lrb[tag].cmd);
>  	if (!hba->req_abort_count) {
> +		ufshcd_update_reg_hist(&hba->ufs_stats.task_abort_err,
> 0);
Here you are collecting abort events statistics, not abort errors.
If this is what you meant, then it's not task_abort_err, but task_abort.
And if indeed you are tracking task aborts, maybe add lun resets as well?


>  		ufshcd_print_host_regs(hba);
>  		ufshcd_print_host_state(hba);
>  		ufshcd_print_pwr_info(hba);
> @@ -7819,6 +7833,8 @@ static int ufshcd_suspend(struct ufs_hba *hba,
> enum ufs_pm_op pm_op)
>  	ufshcd_release(hba);
>  out:
>  	hba->pm_op_in_progress = 0;
> +	if (ret)
> +		ufshcd_update_reg_hist(&hba->ufs_stats.suspend_err,
> (u32)ret);
>  	return ret;
>  }
> 
> @@ -7921,6 +7937,8 @@ static int ufshcd_resume(struct ufs_hba *hba,
> enum ufs_pm_op pm_op)
>  	ufshcd_setup_clocks(hba, false);
>  out:
>  	hba->pm_op_in_progress = 0;
> +	if (ret)
> +		ufshcd_update_reg_hist(&hba->ufs_stats.resume_err,
> (u32)ret);
>  	return ret;
>  }
> 
> diff --git a/drivers/scsi/ufs/ufshcd.h b/drivers/scsi/ufs/ufshcd.h
> index c6ec5c749ceb..f9f109da7f18 100644
> --- a/drivers/scsi/ufs/ufshcd.h
> +++ b/drivers/scsi/ufs/ufshcd.h
> @@ -438,6 +438,10 @@ struct ufs_err_reg_hist {
>   * @dme_err: tracks dme errors
>   * @fatal_err: tracks fatal errors
>   * @auto_hibern8_err: tracks auto-hibernate errors
> + * @tsk_abort_err: tracks task abort events
> + * @linkup_err: tracks link-startup fail events
> + * @suspend_err: tracks suspend fail events
> + * @resume_err: tracks resume fail events
>   */
>  struct ufs_stats {
>  	u32 hibern8_exit_cnt;
> @@ -453,6 +457,12 @@ struct ufs_stats {
>  	/* fatal errors */
>  	struct ufs_err_reg_hist fatal_err;
>  	struct ufs_err_reg_hist auto_hibern8_err;
> +
> +	/* fatal events */
Maybe move here fatal_err as well?

> +	struct ufs_err_reg_hist task_abort_err;
> +	struct ufs_err_reg_hist link_startup_err;
> +	struct ufs_err_reg_hist suspend_err;
> +	struct ufs_err_reg_hist resume_err;
>  };
> 
>  /**
> --
> 2.18.0


Thanks,
Avri


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
