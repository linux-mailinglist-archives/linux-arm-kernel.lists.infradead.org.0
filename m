Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64AAA1F8306
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 13 Jun 2020 12:48:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6o10s12I6qk4mOEzUCgJ1EfgQOaEowA0qf572lxvpsw=; b=UrcDzgDU2DhBbg
	4YCRKDCz6mw7GZ1esgLS/H+YsQKtDF/Cy5nQYgHWYa3RnpU02HMDyFZveKvoZ5/6vT5bwSWn/OjoW
	GNKKzl2vBybQ32fYPZMW5oxyPLZNrrzwQHctAtc/HTUYrOVzKOH+RvICUglov4cJTRNJ8x4rph5YX
	AZx/WjaO5DDAK5gRYs+MoOYhiBb+EYjfp2hyvgTC4idH5riZGcU94gCRcijO7Kd3qdOI3rch7HOkb
	zWr78VorsowxmHwX8EsTnvtMUhaLKqMQp/VnrmSE70DzOq0HvahxqVRQcpps2VzoJMnOivNFe9yvQ
	sJBmjoj3QtznL8JHusNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jk3iP-0007NO-3U; Sat, 13 Jun 2020 10:48:45 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jk3iG-0007MH-RX; Sat, 13 Jun 2020 10:48:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1592045317; x=1623581317;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4IgpfZfmeYhZ9M/EAl7XrGDkFqpnupz//KAZOUOwULQ=;
 b=HpOOLxTVdACgPcMGXII/IXWhYrsfoCjcfkvQUYS/MtbJN/A6HSwjJz7N
 6ywnwa4HeKAX2EXNSL81tU5fJnZEn6E5R/QFxmEHM2W9KHhc3AoLAGPB4
 4np69llsFZu32qki1a3gGKspQSRZYBrCEW0AHL3OGZyQpWeWPoiOEFduX
 pVNxsvHErCE0aOGXvqF3M7TCqgXWZv8wWjPV0xhxT/oO6h3k/trcA8GG5
 qKYNVUAntkDwBKu8zDaFJ/8hc0HFXKZ7ouPNPWqtjKDuKItERGs+Y3JH7
 lifqjykDbXYlsKzV/wf17IgevZb0hNjaUjq6m07GM7SrU5T1zAc2seyhc A==;
IronPort-SDR: A4uP8KPI/Uho8AJqq/h27cUJEGfAPMj0hZSlApwiYVI+n5ud3E6RVENCvdwKBExu5kdkzmvs+9
 f4ARB0mLjeSfx5MuwjlQ5sQuHLg6mG7MWFYU1qu/ZtT+AhGYz1SMwwM1PgDX2VQtW5I+vfLu2O
 vAwpLmyxzM2Ess/NSpm/j/84aVDJRv9fDGRHtyQSyxVMS69BszHTIZ0V57gF0v5WdCuuJ5XvuD
 IrQTWXadVMKfEkiJxYuhywPTgqXxXVYAhT29GVu4+kHpjLnHS2vKo2t7tKeXVp+2QHwp+0A34N
 C6g=
X-IronPort-AV: E=Sophos;i="5.73,506,1583164800"; d="scan'208";a="141297128"
Received: from mail-dm6nam10lp2109.outbound.protection.outlook.com (HELO
 NAM10-DM6-obe.outbound.protection.outlook.com) ([104.47.58.109])
 by ob1.hgst.iphmx.com with ESMTP; 13 Jun 2020 18:48:28 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fsJviH/+mF3ftwJobPw9M7e0IEA1TP35+kZdLbpzT56yJKtlQVN/84BwWA+ESkoYmukhblJ8lCUHV1jOU83ualqoO/15kRwHx4HEupd5N+jI5i/IuqrUCucdr4NgbxIVlCkKbsetCtQbBqOsgWtahd1MZJy8lPZ5NFL0cyQWk+oiqop7UFkj0YNo0XldmFsEujWpLCTf0O0896GkeCFYjMDqJMI3K/Wjcxo/KqLOJ0ZAh4tPAzqbXMqCgNNCCeii6ES3k90EXWqGO/psADfntvDFS3dDEfTVqSe7iyD5nJNfAQ1ejweiM1acOeZfQ+I0iCHQl9PaxV7p4/093nynHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oSXHUdViFcpIqWc+XbbZLhvjFyxuR6EGaliBuIzOTPQ=;
 b=EFuoMqkEOiOjZdl+h0FSXUxFQMKYkl3On7IwDIUM7cEUX4+0pw1mYH0fuxlMiOC0OHn5vf3miLjqXY6IdsBeQZHTszRbb7CupaU7u9tZxsfYXhmwAi8Dtrc+cPVGuq+dokLJxz1+98k8dytThK7SWjYIO4VEeUiy3f6TkOruuBHGT450miRyiSSn3jB5cULeYT6f1aIRr1EnZjIBqkU92VWA57rEgfIi2e6IP7518ERT3c/Ar8QN4ptKBQY76Q4URIShdnKkYJGqmrLNiJxkO20b8NAAZ+EnkLcKB6P14aq3XdZMxtX1CPR/chEp7dcFrrB9tfCMiaci5uwbaHgjJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oSXHUdViFcpIqWc+XbbZLhvjFyxuR6EGaliBuIzOTPQ=;
 b=oTBKo822X2Oqch3qxZFQRfjIzmMfRgI7B3ROt33eZ14rSLTqKMbLu22UGcY4GYQ55CYqk3VC/RLwYiN1uwsQ9WJfa2w8XTgRvDtlfzySjh2rKsRsTmyHD8fJItiKle8/cV85WDt0DHLz9xfawt8mBb4CQ1LIbiW/oC2s7OQD+x8=
Received: from SN6PR04MB4640.namprd04.prod.outlook.com (2603:10b6:805:a4::19)
 by SN2PR04MB2350.namprd04.prod.outlook.com (2603:10b6:804:8::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.21; Sat, 13 Jun
 2020 10:48:22 +0000
Received: from SN6PR04MB4640.namprd04.prod.outlook.com
 ([fe80::9cbe:995f:c25f:d288]) by SN6PR04MB4640.namprd04.prod.outlook.com
 ([fe80::9cbe:995f:c25f:d288%6]) with mapi id 15.20.3088.023; Sat, 13 Jun 2020
 10:48:21 +0000
From: Avri Altman <Avri.Altman@wdc.com>
To: Stanley Chu <stanley.chu@mediatek.com>, "linux-scsi@vger.kernel.org"
 <linux-scsi@vger.kernel.org>, "martin.petersen@oracle.com"
 <martin.petersen@oracle.com>, "alim.akhtar@samsung.com"
 <alim.akhtar@samsung.com>, "jejb@linux.ibm.com" <jejb@linux.ibm.com>,
 "asutoshd@codeaurora.org" <asutoshd@codeaurora.org>
Subject: RE: [PATCH v1 2/2] scsi: ufs: Add trace event for UIC commands
Thread-Topic: [PATCH v1 2/2] scsi: ufs: Add trace event for UIC commands
Thread-Index: AQHWQMuVYKwzY3Iyf0mpsLlh28O4SKjWW/nQ
Date: Sat, 13 Jun 2020 10:48:21 +0000
Message-ID: <SN6PR04MB4640968DCD865651AFA8925DFC9E0@SN6PR04MB4640.namprd04.prod.outlook.com>
References: <20200612151000.27639-1-stanley.chu@mediatek.com>
 <20200612151000.27639-3-stanley.chu@mediatek.com>
In-Reply-To: <20200612151000.27639-3-stanley.chu@mediatek.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: mediatek.com; dkim=none (message not signed)
 header.d=none;mediatek.com; dmarc=none action=none header.from=wdc.com;
x-originating-ip: [2a00:a040:188:8f6c:d566:1f5b:a970:690c]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 38c49df9-2682-4548-bc75-08d80f874a9d
x-ms-traffictypediagnostic: SN2PR04MB2350:
x-microsoft-antispam-prvs: <SN2PR04MB23504F74D9050C91400456C1FC9E0@SN2PR04MB2350.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:2089;
x-forefront-prvs: 0433DB2766
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QH5mTo6UV+BvSumosL/Z+5ok43M0WQLW0twp4a/hLeCPrbW/uxNYAg7uHpebQcQ3MOSoxIpiRpq7COvh8iWdzOsEMd5u7289wmS2w2yweBO0rZXhSlpY7XspcaHGd5AC427pvrW1L+OOkhcATK1YlkBa4Kkw4nYDZRosJZJSQRwpwyE+An+Zuj4XzXbwpCgcJenEtpO113vu168VLLpaojcXCyEB1fvMWAl42nztcyCu4k1JhleO/j4OaCqrmYI8v+vCF7PeP9/H5UQpKE516KElm3z5bgh1HHehe3sj5W6pf4CGQln+rlpIFIFeQ1cmJjCdsFfKE9nt1Grd0pxBoQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR04MB4640.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(346002)(39860400002)(376002)(366004)(136003)(55016002)(71200400001)(66946007)(64756008)(52536014)(66476007)(9686003)(66556008)(66446008)(54906003)(86362001)(110136005)(76116006)(316002)(7696005)(186003)(8936002)(2906002)(6506007)(8676002)(33656002)(83380400001)(4326008)(7416002)(478600001)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: oEMjgJusKtEp2UVTJOaU10qz8zN82C2jCoBW9hkrVwhGUaYT6/MqbByXW6lO0Za2g5oJmxEGLx6hvsZedpb1x/HTau6slu0RQSZJZ0WDrx9qwWXS6G5bxfeA3t13Txedw9j0+iE6Odlv+Piiq0eO5egHz+a9WzDkY8iM0ci3Y/uj9MZ+oWeXnSZfECZwEl8JICjVIf5rpRiN0PlDVsy7nQ9K2/YgIZK0I3bK/WdwQso76dDVj8M2sFAKi1Skbk8N+cAYSLoAXLt0VCnk/oR9qxJ4+0BOm2yuOx3SNPIa80N4Xv2/ndks+u81qV8xTNUxRIFr0fZwqF3nDX14wobFxQw7+ou+0sBAp96TsjW3P5c233PPjKkGMrGToYqpIcb9WJGf31/3sOIWr0HFOqkIwdP1MdDGx9UiLzK9/Twpo4X+otUdSgs7gdIY+GPATgwFFvMRTI1mIR6J6cTpLkqdzMhKxQOcwbfBOhPMHHMLJrXUZdsS8ChuKCCTCQzB8n7WVxTrtaD5MxAEX3r7OaTSPYYu1IRhV5O1t8ZeSW4OH4t09HznBnLESMAayXrT3r9T
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 38c49df9-2682-4548-bc75-08d80f874a9d
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jun 2020 10:48:21.7929 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kB2K77rChAkj2gpARUuGEtt4Ka9wCKkd0YzTqG9dXebrPKgHcw/Z7IEHQiapeJAngHBKe3Hy5/IFCkGYRJ/tzA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN2PR04MB2350
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200613_034837_008546_B24C4557 
X-CRM114-Status: GOOD (  15.95  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "bvanassche@acm.org" <bvanassche@acm.org>,
 "andy.teng@mediatek.com" <andy.teng@mediatek.com>,
 "cc.chou@mediatek.com" <cc.chou@mediatek.com>,
 "chun-hung.wu@mediatek.com" <chun-hung.wu@mediatek.com>,
 "kuohong.wang@mediatek.com" <kuohong.wang@mediatek.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "cang@codeaurora.org" <cang@codeaurora.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "peter.wang@mediatek.com" <peter.wang@mediatek.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "chaotian.jing@mediatek.com" <chaotian.jing@mediatek.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "beanhuo@micron.com" <beanhuo@micron.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> +static void ufshcd_add_uic_command_trace(struct ufs_hba *hba,
> +                                        struct uic_command *ucmd,
> +                                        const char *str)
> +{
> +       u32 cmd;
> +
> +       if (!trace_ufshcd_uic_command_enabled())
> +               return;
> +
> +       if (!strcmp(str, "uic_send"))
> +               cmd = ucmd->command;
> +       else
> +               cmd = ufshcd_readl(hba, REG_UIC_COMMAND);
Why on complete you can't just use ucmd->command as well?

> +
> +       trace_ufshcd_uic_command(dev_name(hba->dev), str, cmd,
> +                                ucmd->result,
> +                                ufshcd_readl(hba, REG_UIC_COMMAND_ARG_1),
> +                                ufshcd_readl(hba, REG_UIC_COMMAND_ARG_2),
> +                                ufshcd_readl(hba, REG_UIC_COMMAND_ARG_3));
Why can't you just use the ucmd members?
Why need to read those?

> +}


> +
>  static void ufshcd_add_command_trace(struct ufs_hba *hba,
>                 unsigned int tag, const char *str)
>  {
> @@ -2054,6 +2075,8 @@ ufshcd_dispatch_uic_cmd(struct ufs_hba *hba,
> struct uic_command *uic_cmd)
>         /* Write UIC Cmd */
>         ufshcd_writel(hba, uic_cmd->command & COMMAND_OPCODE_MASK,
>                       REG_UIC_COMMAND);
> +
> +       ufshcd_add_uic_command_trace(hba, uic_cmd, "uic_send");
>  }
> 
>  /**
> @@ -2080,6 +2103,9 @@ ufshcd_wait_for_uic_cmd(struct ufs_hba *hba,
> struct uic_command *uic_cmd)
>         hba->active_uic_cmd = NULL;
>         spin_unlock_irqrestore(hba->host->host_lock, flags);
> 
> +       uic_cmd->result = ret;
> +       ufshcd_add_uic_command_trace(hba, uic_cmd, "uic_complete");
> +
>         return ret;
>  }
Can't you just call the "send" and "complete" from ufshcd_send_uic_cmd?


> 
> @@ -3760,6 +3786,9 @@ static int ufshcd_uic_pwr_ctrl(struct ufs_hba *hba,
> struct uic_command *cmd)
>                 ret = (status != PWR_OK) ? status : -1;
>         }
>  out:
> +       cmd->result = ret;
> +       ufshcd_add_uic_command_trace(hba, cmd, "uic_complete");
> +
>         if (ret) {
>                 ufshcd_print_host_state(hba);
>                 ufshcd_print_pwr_info(hba);
> diff --git a/include/trace/events/ufs.h b/include/trace/events/ufs.h
> index 5f300739240d..cf8d568d5a13 100644
> --- a/include/trace/events/ufs.h
> +++ b/include/trace/events/ufs.h
> @@ -249,6 +249,39 @@ TRACE_EVENT(ufshcd_command,
>         )
>  );
> 
> +TRACE_EVENT(ufshcd_uic_command,
> +       TP_PROTO(const char *dev_name, const char *str, u32 cmd, int result,
> +                u32 arg1, u32 arg2, u32 arg3),
> +
> +       TP_ARGS(dev_name, str, cmd, result, arg1, arg2, arg3),
> +
> +       TP_STRUCT__entry(
> +               __string(dev_name, dev_name)
> +               __string(str, str)
> +               __field(u32, cmd)
> +               __field(int, result)
> +               __field(u32, arg1)
> +               __field(u32, arg2)
> +               __field(u32, arg3)
> +       ),
> +
> +       TP_fast_assign(
> +               __assign_str(dev_name, dev_name);
> +               __assign_str(str, str);
> +               __entry->cmd = cmd;
> +               __entry->result = result;
> +               __entry->arg1 = arg1;
> +               __entry->arg2 = arg2;
> +               __entry->arg3 = arg3;
> +       ),
> +
> +       TP_printk(
> +               "%s: %s: cmd: 0x%x, arg1: 0x%x, arg2: 0x%x, arg3: 0x%x, result: %d",
> +               __get_str(str), __get_str(dev_name), __entry->cmd,
> +               __entry->arg1, __entry->arg2, __entry->arg3, __entry->result
> +       )
Personally, as those trace events aren't very human readable anyway, I would just dump the uic command,
And let the parsers do their job.
And if this is the case, result is redundant as it is part of arg2

Thanks,
Avri

> +);
> +
>  TRACE_EVENT(ufshcd_upiu,
>         TP_PROTO(const char *dev_name, const char *str, void *hdr, void *tsf),
> 
> --
> 2.18.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
