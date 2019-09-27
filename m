Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B25EBFE7B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 07:14:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ll79/wQfarsHujlWUNssLLrhPzxsVPysQda23IHc/8w=; b=KwCRBpd4FZ/dUr
	Efg49ey4hMHPk7O5HGe59AC2NfdPvDnxIBw8L9V6kcBlsIKCsumTKR268+bmiO3Z/QdIVFyxysOtm
	bnmXdoVN7PatCJ2xEHeeAP5r4be9iWOGJO/vsVMkx4v8IElDaU/fG5xJzmjvrWk2ERqVM99c01Kg6
	aYjJ+R74HxbZJhaLN87jFi+q5Gt0R3E2bpKJhT4Ib0QYju3Iz7pKjAt62GNZpxX+WXXZsfAA9eZ5Z
	rXTyxzo5hxzfVAx48vnKhI5mWXADo+84sqFA5qvHNgNQdcAWLEjs8HadQqPS8HQuPaTOj5cOEF2Gt
	DJvmP995LDmDccbZ7t4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDiZe-0007b0-9j; Fri, 27 Sep 2019 05:13:46 +0000
Received: from mail-eopbgr750059.outbound.protection.outlook.com
 ([40.107.75.59] helo=NAM02-BL2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDiZQ-0007aI-I2
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 05:13:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J6GBofToTWCEpG/PAgvTsnQVlw17jvYpOzFCFSGbpECyPMnp8eue3kPtzRAmcqza9cosQGkx7w2WXc5EiCxRR4LiqmCY+1pkM7yZHgzpWwXqBlxh6un9aIwJ7BVSEIq8z6DGPRNCtjaIHW0Vb6dQtvv3zDN+EQdzDou/XxosUIrf9otoeMznyfuPtkgA5ntd5zB0N6cBo8gWQIfCX53oeFqkP+lYwr8w9bSwL4QgXWy7nAcr5INVM6ezB5v5sApSeKoQp0HEj+MFuq8IH7j/3gwkW1kI8oDyf5SVP9pAyEa92Gdl6Wnid6Tp1U/CtwrkhBi70sMN2QMUZ2ap7dDYnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BIUiyUHSSafp+WHVvlewYZM4ZbvSp4KAn27Hv2fFWTI=;
 b=GQ98/20XBE8zKkjfkJtvLHRZJkJhNuxKZ3MA1GDVVT6ZeMNyKNsDBRnSWbX9wELtVKCKW7K35AKSqs0XQls8zXnR1PYpS2YFuaw42nl6LalBMQ7rwjpUrPZ/OScT/04tsfUQS8/SmqVowI/TAIUKbKctuYiI5HAmPaUoJANqGVNRr8zKBqlPXIbukIBnoC2ivJcqzfDtOHFew+p59dSC8i74wIIGlEdIUjz3xAhu90hTmgrHZfPwA0ibFU+A+JsaCY1zHSmWU/I2bgN0TLPVSfyVJ2hGwV27e3NfiG0wULhp1KFk+ogb5Lr5pDThO0M1paysXhGU6qadZ3ITFE5WMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BIUiyUHSSafp+WHVvlewYZM4ZbvSp4KAn27Hv2fFWTI=;
 b=S3NyJP8y+zR9Ux0/pEM56xqqZhACLFAe8AhZbv1M8DlL2+K5OdKgCfQJlCUBW0nnxflQtR3k3HUHyoT/+vkvb8L/fRRA79OUXwc6dATLckWictTnzHkX0cZyRNncnDc4fd3aF4gOsOqqGv9Et4Kxz6kbAbY8ta7zB11eNghneXE=
Received: from MN2PR02MB6400.namprd02.prod.outlook.com (52.132.175.209) by
 MN2PR02MB6927.namprd02.prod.outlook.com (20.180.24.208) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.16; Fri, 27 Sep 2019 05:13:28 +0000
Received: from MN2PR02MB6400.namprd02.prod.outlook.com
 ([fe80::5c31:a5be:6d2e:b00e]) by MN2PR02MB6400.namprd02.prod.outlook.com
 ([fe80::5c31:a5be:6d2e:b00e%6]) with mapi id 15.20.2284.023; Fri, 27 Sep 2019
 05:13:28 +0000
From: Appana Durga Kedareswara Rao <appanad@xilinx.com>
To: Moritz Fischer <mdf@kernel.org>, Alan Tull <atull@kernel.org>, Moritz
 Fischer <mdf@kernel.org>
Subject: RE: [PATCH v4 1/2] fpga: fpga-mgr: Add readback support
Thread-Topic: [PATCH v4 1/2] fpga: fpga-mgr: Add readback support
Thread-Index: AQHUJXI7dDFbK5711Eu097iFJz0BGqSpdEwAgpgj+bA=
Date: Fri, 27 Sep 2019 05:13:28 +0000
Message-ID: <MN2PR02MB6400CD5312983443A67DCC4EDC810@MN2PR02MB6400.namprd02.prod.outlook.com>
References: <1532672551-22146-1-git-send-email-appana.durga.rao@xilinx.com>
 <CANk1AXSEWcZ7Oqv5pgpwvJRyyFWk5gPtniXa7T+oe6-uywqEqA@mail.gmail.com>
In-Reply-To: <CANk1AXSEWcZ7Oqv5pgpwvJRyyFWk5gPtniXa7T+oe6-uywqEqA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: mdf@kernel.org
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=appanad@xilinx.com; 
x-originating-ip: [149.199.50.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 684a9eca-b552-4ac0-08c1-08d743096e9e
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: MN2PR02MB6927:|MN2PR02MB6927:
x-ms-exchange-purlcount: 2
x-ld-processed: 657af505-d5df-48d0-8300-c31994686c5c,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR02MB69279F5E28E8BEC798E9AAE4DC810@MN2PR02MB6927.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1148;
x-forefront-prvs: 0173C6D4D5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(366004)(39860400002)(346002)(376002)(396003)(189003)(199004)(8676002)(52536014)(5660300002)(99286004)(26005)(186003)(6306002)(9686003)(76176011)(66946007)(6506007)(55016002)(86362001)(7696005)(102836004)(4326008)(53546011)(76116006)(446003)(66476007)(476003)(66446008)(66556008)(64756008)(486006)(6436002)(11346002)(6246003)(107886003)(14444005)(256004)(71190400001)(71200400001)(33656002)(6116002)(966005)(54906003)(25786009)(110136005)(316002)(2906002)(478600001)(14454004)(3846002)(305945005)(229853002)(8936002)(74316002)(66066001)(81166006)(7736002)(81156014)(422495003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR02MB6927;
 H:MN2PR02MB6400.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kiuGyxaF14pAY7wwH1ADuRbE8tj6foIxYS3SJ2EyTyDG6lLLsDklzvygXJI/fEnQBKS2frjUzo1H8CpyGj8y8AmUjAydDHaWANnCm25R667p4uyO7Kgwi9W3OFfh+4OnbEnhLlmskvZTkEVxnmRzLy3d1C04JcaBEBHFegm1crXb9Dq6VOTXDPNrWJ/SCykY2kWRTl2lvZyf0cdH08adYklSlvY2OKnJcbs3vL2CoHeDAC07T4uxsMBLF+b0X/fRdTQvtUkRgpS2rbNi2MhfQdpClLj0ecSQnaP5fbeY1ZxnCEdM5ApW2PtjZrdH6jxkidxgly1t4gWDDN65HaPCe5ckiBLsnJnUqS/GlPo48VUpf+KGmwgwcY81hVs4sRuakyZtT+nlaC53nxadE/irazYVcPxlrDrL7vQQkXXM2TbEFOwwTCC65hC1QE+rj1XfFp9hpwtbYY1/O5xMyAStYA==
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 684a9eca-b552-4ac0-08c1-08d743096e9e
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Sep 2019 05:13:28.4102 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: O2geV3pvh6HD6sYAMpDgnjisAvLzAO1THEZm2UValkFaSxYQu71nwgCHDDKEKTsus+F6elPFT0BDI3ShMEEPLg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR02MB6927
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_221332_667922_99700157 
X-CRM114-Status: GOOD (  29.24  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.75.59 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Nava kishore Manne <navam@xilinx.com>,
 "kedare06@gmail.com" <kedare06@gmail.com>,
 "linux-fpga@vger.kernel.org" <linux-fpga@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Siva Durga Prasad Paladugu <sivadur@xilinx.com>,
 Michal Simek <michals@xilinx.com>, "moderated list:ARM/FREESCALE IMX / MXC ARM
 ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Alan,

Did you get a chance to send your framework changes to upstream?
@Moritz Fischer: If Alan couldn't send his patch series, Can we take this patch series??
Please let me know your thoughts on this. 

Regards,
Kedar.
> On Fri, Jul 27, 2018 at 1:22 AM, Appana Durga Kedareswara rao
> <appana.durga.rao@xilinx.com> wrote:
> 
> Hi Appana,
> 
> There should be some documentation for the debugfs added under
> Documentation/driver-api/fpga/
> 
> Also there are a lot of #ifdefs that were added due to the
> CONFIG_FPGA_MGR_DEBUG_FS.  This has caused a kernel robot complaint.
> The way to fix that is to have a separate c file for the debugfs implementation.
> I see a lot of other kernel drivers have done it this way.  I have an
> implementation that I haven't submitted yet, it exposes different functionality
> (exposing the image firmware file name and writing to the image file).  It's on
> the downstream github.com/altera-opensource repo [1].  I'll clean this up and
> submit it to the mailing list, it may take a minute for me to get to that.
> Once that's done, your added functionality can be a patch on top of that.
> 
> Alan
> 
> [1] https://github.com/altera-opensource/linux-socfpga/blob/socfpga-
> 4.17/drivers/fpga/fpga-mgr-debugfs.c
> https://github.com/altera-opensource/linux-socfpga/blob/socfpga-
> 4.17/drivers/fpga/fpga-mgr-debugfs.h
> 
> 
> > Inorder to debug issues with fpga's users would like to read the fpga
> > configuration information.
> > This patch adds readback support for fpga configuration data in the
> > framework through debugfs interface.
> >
> > Usage:
> >         cat /sys/kernel/debug/fpga/fpga0/image
> >
> > Signed-off-by: Appana Durga Kedareswara rao
> > <appana.durga.rao@xilinx.com>
> > ---
> > Changes for v4:
> > --> None.
> > Changes for v3:
> > --> None.
> > Changes for v2:
> > --> Fixed debug attribute path and name as suggested by Alan Add
> > --> config entry for DEBUG as suggested by Alan Fixed trival coding
> > --> style issues.
> >
> >  drivers/fpga/Kconfig          |  7 +++++
> >  drivers/fpga/fpga-mgr.c       | 68
> +++++++++++++++++++++++++++++++++++++++++++
> >  include/linux/fpga/fpga-mgr.h |  5 ++++
> >  3 files changed, 80 insertions(+)
> >
> > diff --git a/drivers/fpga/Kconfig b/drivers/fpga/Kconfig index
> > 53d3f55..838ad4e 100644
> > --- a/drivers/fpga/Kconfig
> > +++ b/drivers/fpga/Kconfig
> > @@ -11,6 +11,13 @@ menuconfig FPGA
> >
> >  if FPGA
> >
> > +config FPGA_MGR_DEBUG_FS
> > +       tristate "FPGA Debug fs"
> > +       select DEBUG_FS
> > +       help
> > +         FPGA manager debug provides support for reading fpga configuration
> > +         information.
> > +
> >  config FPGA_MGR_SOCFPGA
> >         tristate "Altera SOCFPGA FPGA Manager"
> >         depends on ARCH_SOCFPGA || COMPILE_TEST diff --git
> > a/drivers/fpga/fpga-mgr.c b/drivers/fpga/fpga-mgr.c index
> > 9939d2c..4bea860 100644
> > --- a/drivers/fpga/fpga-mgr.c
> > +++ b/drivers/fpga/fpga-mgr.c
> > @@ -484,6 +484,48 @@ void fpga_mgr_put(struct fpga_manager *mgr)  }
> > EXPORT_SYMBOL_GPL(fpga_mgr_put);
> >
> > +#ifdef CONFIG_FPGA_MGR_DEBUG_FS
> > +#include <linux/debugfs.h>
> > +
> > +static int fpga_mgr_read(struct seq_file *s, void *data) {
> > +       struct fpga_manager *mgr = (struct fpga_manager *)s->private;
> > +       int ret = 0;
> > +
> > +       if (!mgr->mops->read)
> > +               return -ENOENT;
> > +
> > +       if (!mutex_trylock(&mgr->ref_mutex))
> > +               return -EBUSY;
> > +
> > +       if (mgr->state != FPGA_MGR_STATE_OPERATING) {
> > +               ret = -EPERM;
> > +               goto err_unlock;
> > +       }
> > +
> > +       /* Read the FPGA configuration data from the fabric */
> > +       ret = mgr->mops->read(mgr, s);
> > +       if (ret)
> > +               dev_err(&mgr->dev, "Error while reading configuration
> > + data from FPGA\n");
> > +
> > +err_unlock:
> > +       mutex_unlock(&mgr->ref_mutex);
> > +
> > +       return ret;
> > +}
> > +
> > +static int fpga_mgr_read_open(struct inode *inode, struct file *file)
> > +{
> > +       return single_open(file, fpga_mgr_read, inode->i_private); }
> > +
> > +static const struct file_operations fpga_mgr_ops_image = {
> > +       .owner = THIS_MODULE,
> > +       .open = fpga_mgr_read_open,
> > +       .read = seq_read,
> > +};
> > +#endif
> > +
> >  /**
> >   * fpga_mgr_lock - Lock FPGA manager for exclusive use
> >   * @mgr:       fpga manager
> > @@ -581,6 +623,29 @@ int fpga_mgr_register(struct device *dev, const
> char *name,
> >         if (ret)
> >                 goto error_device;
> >
> > +#ifdef CONFIG_FPGA_MGR_DEBUG_FS
> > +       struct dentry *d, *parent;
> > +
> > +       mgr->dir = debugfs_create_dir("fpga", NULL);
> > +       if (!mgr->dir)
> > +               goto error_device;
> > +
> > +       parent = mgr->dir;
> > +       d = debugfs_create_dir(mgr->dev.kobj.name, parent);
> > +       if (!d) {
> > +               debugfs_remove_recursive(parent);
> > +               goto error_device;
> > +       }
> > +
> > +       parent = d;
> > +       d = debugfs_create_file("image", 0644, parent, mgr,
> > +                               &fpga_mgr_ops_image);
> > +       if (!d) {
> > +               debugfs_remove_recursive(mgr->dir);
> > +               goto error_device;
> > +       }
> > +#endif
> > +
> >         dev_info(&mgr->dev, "%s registered\n", mgr->name);
> >
> >         return 0;
> > @@ -604,6 +669,9 @@ void fpga_mgr_unregister(struct device *dev)
> >
> >         dev_info(&mgr->dev, "%s %s\n", __func__, mgr->name);
> >
> > +#ifdef CONFIG_FPGA_MGR_DEBUG_FS
> > +       debugfs_remove_recursive(mgr->dir);
> > +#endif
> >         /*
> >          * If the low level driver provides a method for putting fpga into
> >          * a desired state upon unregister, do it.
> > diff --git a/include/linux/fpga/fpga-mgr.h
> > b/include/linux/fpga/fpga-mgr.h index 3c6de23..e9e17a9 100644
> > --- a/include/linux/fpga/fpga-mgr.h
> > +++ b/include/linux/fpga/fpga-mgr.h
> > @@ -114,6 +114,7 @@ struct fpga_image_info {
> >   * @write: write count bytes of configuration data to the FPGA
> >   * @write_sg: write the scatter list of configuration data to the FPGA
> >   * @write_complete: set FPGA to operating state after writing is done
> > + * @read: optional: read FPGA configuration information
> >   * @fpga_remove: optional: Set FPGA into a specific state during driver
> remove
> >   * @groups: optional attribute groups.
> >   *
> > @@ -131,6 +132,7 @@ struct fpga_manager_ops {
> >         int (*write_sg)(struct fpga_manager *mgr, struct sg_table *sgt);
> >         int (*write_complete)(struct fpga_manager *mgr,
> >                               struct fpga_image_info *info);
> > +       int (*read)(struct fpga_manager *mgr, struct seq_file *s);
> >         void (*fpga_remove)(struct fpga_manager *mgr);
> >         const struct attribute_group **groups;  }; @@ -151,6 +153,9 @@
> > struct fpga_manager {
> >         enum fpga_mgr_states state;
> >         const struct fpga_manager_ops *mops;
> >         void *priv;
> > +#ifdef CONFIG_FPGA_MGR_DEBUG_FS
> > +       struct dentry *dir;
> > +#endif
> >  };
> >
> >  #define to_fpga_manager(d) container_of(d, struct fpga_manager, dev)
> > --
> > 2.7.4
> >
> > --
> > To unsubscribe from this list: send the line "unsubscribe linux-fpga"
> > in the body of a message to majordomo@vger.kernel.org More majordomo
> > info at  http://vger.kernel.org/majordomo-info.html
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
