Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 925B01F8818
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 14 Jun 2020 11:28:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0IfXKAxsbWTV2i2MEj2GU3fUPsyNrdgBZ7zWnoMW6kw=; b=HM4rNv13Fpa/cM
	cpJzhOa21nL9Sye5wqGoz3tYSUrom5cV3i3ynxHg4weDB9g94+6TCYO8ZJdbHtKBChWN09m/4Sft5
	3sJUgqh1nnAMhQuC6sl/juU8pon/KjgProcUvu3v82QW3tzHUZ48DacChQWI3cXPL7D15FD4hGyNJ
	cFTHesTfgGfugwFPfp/YYxUZam4LIWGbtKwVERXxPLISZVrDCUJjHz02cIfnXnPftnC2IWME/I5LI
	lC6eXsF9o1Eh6c+hDpCxDUGnLyOY0TIqJVKINJXo/kfzEPmH4bQWHd0dc/qgPkyJqB5iFR2vLNS8o
	wmqHWG+KLpmZVMc4rlxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkOw4-00020F-KZ; Sun, 14 Jun 2020 09:28:16 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkOvt-0001yi-GB; Sun, 14 Jun 2020 09:28:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1592126886; x=1623662886;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=R7F3+MRenkRoRSgH5UZ+VI9Ec5NSXcKN4+S/nRJG+fw=;
 b=UGd4VWpB36R2BmA8+uGc7K77U6nIAZD0fAHmwaOQHOMcww3ARqHaqHF6
 MEgYUV6rDk3ns1QBPi2YmHdtlgg9/4iTxYWfo7tnd2QMYO5GyKiIElxO2
 kx3z26pRBqAIU9nZhEBNZxhOQjuuYJf0Foy81XPvKWrYpV6/O+9mZhR5z
 hQJQslL3T8oN5LpPfZiNRLKw8JKh3pO+Y+eXzK2AScS48wJshIlhm0rh7
 WzCTI8d63mMpzAYko1XhuqyJ4Bq7EgiuNUlnU3wOpQka/G5cZAsF10xHP
 Hrec3KyEFmvQuUvLPWIL6w/D+Mu2wd25TTQ/qElygCtjX+04B7sev4SnD g==;
IronPort-SDR: pD2W7HXR04kSB4hI4O+JtkQoriWPUTm8WiCK6YnE4ADDWpfj/ilZEclk4Nnd7QtvAwcylLGawv
 abEicRnEjGCjXt6MAbEnr70OeCtcdl97DDZvozl2xmN1JI9xf0m57b8hQR/vYRjzvXVbmHHhkF
 fphcscOJkQj8TJmE65g6HNJ5K80IlgdXel5dcEwvm1DqKktynJMz1xQRT8CIBosWmvfTmq9nlc
 A7UuCj+X+ffjAHU3SOpuUhP9YKlf/tT4HsKjL9wdL0XWJeArDMT/gbRFdJiyDyHTQonlnGKUHl
 eRY=
X-IronPort-AV: E=Sophos;i="5.73,510,1583164800"; d="scan'208";a="144270625"
Received: from mail-dm6nam11lp2170.outbound.protection.outlook.com (HELO
 NAM11-DM6-obe.outbound.protection.outlook.com) ([104.47.57.170])
 by ob1.hgst.iphmx.com with ESMTP; 14 Jun 2020 17:27:58 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j/eMOr3aLv7HvtXHaFiQd50m0O1FngJgZ2kMlIFe5s4keq6f9/ccJPBXW9H9CaTm1AcQq+XLODqiL69nNMeU/n4qeZOw1nMqFSVdz6P6DSZipn/FaPuNq3QTzLUYJLFSU+Hr+FsLuMO3rTtSBnaEaBHSlvVZaMW8GaEd4C0N7M4g5wSKlRJ/miHYqEugT9n0mIO7RROQF3y7QDensQ1ruvIMyEXOcmZrmGjrtCVU4BxtW7Sdc5K0H8+cuLmW5ZnAkSIq3UnrqwyAxkb2jAKf2jRZ4dk2gBDyRFPaWtU1BwEL2ijIb+XYE4pA67obhglQZdMMr15EyNPH12qrlZjfAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R7F3+MRenkRoRSgH5UZ+VI9Ec5NSXcKN4+S/nRJG+fw=;
 b=GBBYalNzc7xrU8tMX+8/Z67fhvHVBpkx9CChQtIJmg0c7phTjmaF4bgGRjJpXYuMuF3eUT5OgO5tT1+6MJj66lC0LsEaDmAqumcVBZxcRsteuUg31TQoiF30GytucMrBl33KZpDnm8DGJhfhM9q6ISaSrECQ1485jbIM5hxQ2BGjxU7h86ceXwuEclIAA3EQZtjmGEjBT5cI3ZmZEKJLFKzuyGMErNHRJ27Br3RLnW7BRsiXDclUX+mMTBdipPyIud4FvvBr/D+AqhKLZyLDyapICaUhpUma++Fn/iXPQ/UZepCg/rDkuaUet5rLEoCtDgsoHyHP1JmS+5ey8MFgtA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R7F3+MRenkRoRSgH5UZ+VI9Ec5NSXcKN4+S/nRJG+fw=;
 b=kwEywh7wGBQrMIdCMndIshrYZVuibUxAWyEFnX4o7eLDCGVkdfW4Yl1ki9LUJRgJzx4nKUoAC7ANqEY19ZfTb3UXAohyvVrKYqQWcVQ9X6ei4I8e2Az5TmybpPtdgTGUTjYgKXadrQjzaaRY9cAyiT30VCJd2A2JKUhrQyDS50I=
Received: from SN6PR04MB4640.namprd04.prod.outlook.com (2603:10b6:805:a4::19)
 by SN2PR04MB2174.namprd04.prod.outlook.com (2603:10b6:804:10::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.18; Sun, 14 Jun
 2020 09:27:54 +0000
Received: from SN6PR04MB4640.namprd04.prod.outlook.com
 ([fe80::9cbe:995f:c25f:d288]) by SN6PR04MB4640.namprd04.prod.outlook.com
 ([fe80::9cbe:995f:c25f:d288%6]) with mapi id 15.20.3088.028; Sun, 14 Jun 2020
 09:27:54 +0000
From: Avri Altman <Avri.Altman@wdc.com>
To: Stanley Chu <stanley.chu@mediatek.com>
Subject: RE: [PATCH v1 2/2] scsi: ufs: Add trace event for UIC commands
Thread-Topic: [PATCH v1 2/2] scsi: ufs: Add trace event for UIC commands
Thread-Index: AQHWQMuVYKwzY3Iyf0mpsLlh28O4SKjWW/nQgAA9dgCAAUDwkA==
Date: Sun, 14 Jun 2020 09:27:54 +0000
Message-ID: <SN6PR04MB46403686B1E4AD37B8E9C178FC9F0@SN6PR04MB4640.namprd04.prod.outlook.com>
References: <20200612151000.27639-1-stanley.chu@mediatek.com>
 <20200612151000.27639-3-stanley.chu@mediatek.com>
 <SN6PR04MB4640968DCD865651AFA8925DFC9E0@SN6PR04MB4640.namprd04.prod.outlook.com>
 <1592057910.25636.81.camel@mtkswgap22>
In-Reply-To: <1592057910.25636.81.camel@mtkswgap22>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: mediatek.com; dkim=none (message not signed)
 header.d=none;mediatek.com; dmarc=none action=none header.from=wdc.com;
x-originating-ip: [212.25.79.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: eb02fcb1-d733-412f-b1ef-08d810453796
x-ms-traffictypediagnostic: SN2PR04MB2174:
x-microsoft-antispam-prvs: <SN2PR04MB217493B045F892F4F189D6E2FC9F0@SN2PR04MB2174.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 04347F8039
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: V45XYchI3GVVZW1zMftveKYgYsUbXKmWf6bvj8XFOIoPSVrAYpU3xYaTW06wCqq/14bIhcPztFFkQW6uBEBzSNO6zJ5pswLZzgXMxqaxIc1y6/1TeKWZItcdzHECorp4Lxs2sR+/4K8MlJAzGenO7fIOlsvPBxnaIlwuYIm1Qp2fpfvWGO6Pbh5dNjOMBvor+dPxf7iUmUvRwmOPZDXcwpxatgV8myeYrLp3Z+ytikcc+l30RzTx07+ZTKuiqYSzmVwkdXk2d/vhWj0iFJBfXdGtxWvvv8df7827avnrTur4YuUO2UKngPTto9VI1ZMTO9eNM4mw6L2B22EQmYVe1Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR04MB4640.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(39860400002)(366004)(396003)(376002)(346002)(26005)(54906003)(316002)(186003)(2906002)(8936002)(52536014)(7696005)(5660300002)(6506007)(478600001)(9686003)(55016002)(33656002)(86362001)(66556008)(64756008)(66446008)(66946007)(7416002)(66476007)(83380400001)(71200400001)(6916009)(8676002)(4326008)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 8M94q/XdN5lKbRhrssP94m1p+ODWMH2QqyLi7v5F8UpTE+hwHeygEgiFepaYzuQPsd142pIzz8isLO5BCGx+l33n3OYgjU5S/DMu/r1RWOwSED/7hq09RoVGkByAJQIS2Jo7COTf0BhnZFkvyNaAT9UdHHDPKSkbARytFVY+5NNFAq3zpOHUP6peczjDinIugQK5c/WDAYhc+57lMVPAmftRK4mqr2aucncEH/OhsnaiebtQFJw11Ezrm+JL+OPs9DywCNB7pIaB5oY72aC/reMuk++BHQyM+QMEpzJq/uWgeIPUpW7z7m0GXFod9OW4tNROIBoYa/p68Ntf6xAFtJMAbmHFc1faY0O3twJTw8wcIQU/fe1AbKKgg5cxrC9k3jmkjDa5kNfD2cGbLTCt/9p/zbpaMWIZOYXkYyME4/H3FdIIUwwzGnPlkblY0vLFKAwAVG1q9JgIhhI2DRQmrzd5xX9nZIUWm66KwNeD+io=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eb02fcb1-d733-412f-b1ef-08d810453796
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jun 2020 09:27:54.2956 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ikbCQm3osS2SSNYGGamYfSgTX2mstnmVesHgqfhNJk5tZGMbq8PVGwiglyhp8j9qk+PPESMq5Mq3XBQjg8FojA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN2PR04MB2174
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200614_022805_604474_E9A08B64 
X-CRM114-Status: GOOD (  25.62  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
 "martin.petersen@oracle.com" <martin.petersen@oracle.com>,
 "andy.teng@mediatek.com" <andy.teng@mediatek.com>,
 "jejb@linux.ibm.com" <jejb@linux.ibm.com>,
 "chun-hung.wu@mediatek.com" <chun-hung.wu@mediatek.com>,
 "kuohong.wang@mediatek.com" <kuohong.wang@mediatek.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "cc.chou@mediatek.com" <cc.chou@mediatek.com>,
 "cang@codeaurora.org" <cang@codeaurora.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "peter.wang@mediatek.com" <peter.wang@mediatek.com>,
 "alim.akhtar@samsung.com" <alim.akhtar@samsung.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "asutoshd@codeaurora.org" <asutoshd@codeaurora.org>,
 "chaotian.jing@mediatek.com" <chaotian.jing@mediatek.com>,
 "bvanassche@acm.org" <bvanassche@acm.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "beanhuo@micron.com" <beanhuo@micron.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Acked-by: Avri Altman <avri.altman@wdc.com>

> 
> 
> Hi Avri,
> 
> On Sat, 2020-06-13 at 10:48 +0000, Avri Altman wrote:
> > > +static void ufshcd_add_uic_command_trace(struct ufs_hba *hba,
> > > +                                        struct uic_command *ucmd,
> > > +                                        const char *str)
> > > +{
> > > +       u32 cmd;
> > > +
> > > +       if (!trace_ufshcd_uic_command_enabled())
> > > +               return;
> > > +
> > > +       if (!strcmp(str, "uic_send"))
> > > +               cmd = ucmd->command;
> > > +       else
> > > +               cmd = ufshcd_readl(hba, REG_UIC_COMMAND);
> > Why on complete you can't just use ucmd->command as well?
> 
> Reading registers is really helpful for debugging to check if host UIC
> command register really received the command before.
> 
> But the original requesting UIC command shall be logged in trace so
> ucmd->command is logged during "send", and the command in register is
> read and logged during "completed". Then we could simply check them to
> know if something wrong while sending the command.
> 
> This concept is similar as current UTP command trace events that
> doorbell register is read and dumped in the trace.
> 
> >
> > > +
> > > +       trace_ufshcd_uic_command(dev_name(hba->dev), str, cmd,
> > > +                                ucmd->result,
> > > +                                ufshcd_readl(hba, REG_UIC_COMMAND_ARG_1),
> > > +                                ufshcd_readl(hba, REG_UIC_COMMAND_ARG_2),
> > > +                                ufshcd_readl(hba, REG_UIC_COMMAND_ARG_3));
> > Why can't you just use the ucmd members?
> > Why need to read those?
> 
> As above same reason, reading registers can know which arguments are
> exactly sent to the device.
> 
> This is very helpful for fast issue breakdown if UIC command is not
> responded under expectation.
> 
> Here, we also really want to keep the original requesting arguments from
> "ucmd", just like UIC command. However, arguments in register will be
> changed after UIC command is done so we can not do the same way as UIC
> command. So a compromise is here that we logged the arguments which host
> register exactly received in trace.
> 
> >
> > > +}
> >
> >
> > > +
> > >  static void ufshcd_add_command_trace(struct ufs_hba *hba,
> > >                 unsigned int tag, const char *str)
> > >  {
> > > @@ -2054,6 +2075,8 @@ ufshcd_dispatch_uic_cmd(struct ufs_hba *hba,
> > > struct uic_command *uic_cmd)
> > >         /* Write UIC Cmd */
> > >         ufshcd_writel(hba, uic_cmd->command &
> COMMAND_OPCODE_MASK,
> > >                       REG_UIC_COMMAND);
> > > +
> > > +       ufshcd_add_uic_command_trace(hba, uic_cmd, "uic_send");
> > >  }
> > >
> > >  /**
> > > @@ -2080,6 +2103,9 @@ ufshcd_wait_for_uic_cmd(struct ufs_hba *hba,
> > > struct uic_command *uic_cmd)
> > >         hba->active_uic_cmd = NULL;
> > >         spin_unlock_irqrestore(hba->host->host_lock, flags);
> > >
> > > +       uic_cmd->result = ret;
> > > +       ufshcd_add_uic_command_trace(hba, uic_cmd, "uic_complete");
> > > +
> > >         return ret;
> > >  }
> > Can't you just call the "send" and "complete" from ufshcd_send_uic_cmd?
> 
> For "send", we would like to log the time as precise as possible so
> "send" event is logged while UIC command is sent.
> 
> Thanks so much! Your question reminds me that "send" trace shall be
> moved before UIC command is sent otherwise register value may be changed
> before logging "send" trace. I will fix this in next version.
> 
> For "completed", to make logging time as closed to UIC command
> completion as possible, maybe I need to change the logging timing to
> ufshcd_uic_cmd_compl(), just like UTP command completion trace which is
> logged in __ufshcd_transfer_reg_compl().
> 
> If you have no objection, I will try to fix this in next version.
> 
> >
> >
> > >
> > > @@ -3760,6 +3786,9 @@ static int ufshcd_uic_pwr_ctrl(struct ufs_hba
> *hba,
> > > struct uic_command *cmd)
> > >                 ret = (status != PWR_OK) ? status : -1;
> > >         }
> > >  out:
> > > +       cmd->result = ret;
> > > +       ufshcd_add_uic_command_trace(hba, cmd, "uic_complete");
> > > +
> > >         if (ret) {
> > >                 ufshcd_print_host_state(hba);
> > >                 ufshcd_print_pwr_info(hba);
> > > diff --git a/include/trace/events/ufs.h b/include/trace/events/ufs.h
> > > index 5f300739240d..cf8d568d5a13 100644
> > > --- a/include/trace/events/ufs.h
> > > +++ b/include/trace/events/ufs.h
> > > @@ -249,6 +249,39 @@ TRACE_EVENT(ufshcd_command,
> > >         )
> > >  );
> > >
> > > +TRACE_EVENT(ufshcd_uic_command,
> > > +       TP_PROTO(const char *dev_name, const char *str, u32 cmd, int
> result,
> > > +                u32 arg1, u32 arg2, u32 arg3),
> > > +
> > > +       TP_ARGS(dev_name, str, cmd, result, arg1, arg2, arg3),
> > > +
> > > +       TP_STRUCT__entry(
> > > +               __string(dev_name, dev_name)
> > > +               __string(str, str)
> > > +               __field(u32, cmd)
> > > +               __field(int, result)
> > > +               __field(u32, arg1)
> > > +               __field(u32, arg2)
> > > +               __field(u32, arg3)
> > > +       ),
> > > +
> > > +       TP_fast_assign(
> > > +               __assign_str(dev_name, dev_name);
> > > +               __assign_str(str, str);
> > > +               __entry->cmd = cmd;
> > > +               __entry->result = result;
> > > +               __entry->arg1 = arg1;
> > > +               __entry->arg2 = arg2;
> > > +               __entry->arg3 = arg3;
> > > +       ),
> > > +
> > > +       TP_printk(
> > > +               "%s: %s: cmd: 0x%x, arg1: 0x%x, arg2: 0x%x, arg3: 0x%x, result:
> %d",
> > > +               __get_str(str), __get_str(dev_name), __entry->cmd,
> > > +               __entry->arg1, __entry->arg2, __entry->arg3, __entry->result
> > > +       )
> > Personally, as those trace events aren't very human readable anyway, I
> would just dump the uic command,
> > And let the parsers do their job.
> > And if this is the case, result is redundant as it is part of arg2
> 
> My original thought is to log some exceptions, like "-ETIMEDOUT" in
> "result". But if I changed "completion" trace handling to interrupt
> handler, there will be no chance to log those exceptions. This is OK
> because UTP trace is exactly behave this way: No completion event in
> trace if request is not back. And if this way is implemented, "result"
> is definitely redundant and shall be removed.
> 
> Thanks,
> Stanley Chu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
