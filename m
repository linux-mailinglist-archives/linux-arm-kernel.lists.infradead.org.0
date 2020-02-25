Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0608216BB92
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 09:12:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oXpdKX4w4Ojrd6AE7lLj7Rix+Tl0wjtLGylhH1iDWys=; b=g8JDcXGijC9TDX
	uBUn/lVvpK48cHBxLpsR1qtaWhN5g0O0Lk9iGwmam62VtWeb6HVYTeXikdKltgFmRyeynojuVSYIt
	I7n5yV/gzHhvzqYGKdtPOPNYv6QYlI/QzP1cCfk+dwjudccfxNG0GlYvjAGyTx07NKlBSoxyJ3Sln
	7Uy1mJEsoyCC8Xj14U7AE9BndrzzebB2UGDWyuKdzJOrO+8nXqgLxMRrTDzKvNQ/dj8VFtguCwduE
	Dc2k9V0TS8UOkQyp06pRwdCil//gwQy9SHmd2dLWh85RuIR8q0Fte4A7w9rSFKPN9ffNdu/cDyxPz
	ZXyeKVu9muhCNM+BFYnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6VKL-0000d2-MC; Tue, 25 Feb 2020 08:12:25 +0000
Received: from mail-vi1eur05on2064.outbound.protection.outlook.com
 ([40.107.21.64] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6VKA-0000c0-Qc; Tue, 25 Feb 2020 08:12:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZgKkx9oUWJ/2Szgk7SljbtojxUtuLAsOoX91HekWcMSvAVLJPzsgRW0euBTkWtBtdL2ZbEDinwTqp8iwTa6I0/77xJrCCJ6ZbH9fb5BIc5KHPeDi3dIa4dxNqvsxylRrt/v+X4ZPQnmtMD8aZM5yf0tPyg+65s67NrFyn/hemZe4zwKttX6gacx76Rf9rGvercFo9Qgbqn7NdIjs4/yeQWl86Ko2ZjYROBfcVhehgQm/LG+bv338fMa/AjHI62qYc/SSwqa2i2Nd43BSs7m1SiAfqk3TPAuM3KXfDzejvhLVaigVdG8M980T8fBZXDHu6Xf9OqNnK8H31XfABdz1Gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bKJqPbzyCrYysc8e6vNkQF3RLZxCHQskhMILm6nDuo4=;
 b=Tw7MRwYphSRHdn44GW5DLawnSoqSm49tSo3TPnikgsljrvfp8Ti2oQpHGIWSRy6TUx63xOYazORTsf/wRPVMWuiCjG9apD1W2ILkTCdO386vXwMhrRzUp6vyW9OdhzTffjDt+A45PC3sGztlMEuO4mhPDKBP1tTOKknQNHPkAzalJghrvNWLu8V9nTn7V3P8z8p8XST08UIdgyaf9jAl515vfG/wA+7WeAIlw9u5pzBEaQvJW/DWrLlOFVPvz08iZPK149ASj2joiBSfODLqAPFC6RSLbnB/PsS5OjkJfn3OMOhl+oGpcDOCMSgC3fL50cOQrKm8HyYMw1/WMKFP4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bKJqPbzyCrYysc8e6vNkQF3RLZxCHQskhMILm6nDuo4=;
 b=ibg0cOFwVs6O/J6+KQDKBBcKf7cejlDYVvD+waPDb6OvaHy1NjKyzu6pcl0hUpjk/WjJszms0hjUhJ8wV1PUXyizyj9RaE5lSBpKSMUfzZeZOld7lyBvcO+fsiH5DKhf0T04sm4Hlal0nwkIlp+3eGf62Nez5x80N8S4JkVPvak=
Received: from VI1PR04MB5327.eurprd04.prod.outlook.com (20.177.51.23) by
 VI1PR04MB3309.eurprd04.prod.outlook.com (10.170.225.150) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.21; Tue, 25 Feb 2020 08:12:10 +0000
Received: from VI1PR04MB5327.eurprd04.prod.outlook.com
 ([fe80::9547:9dfa:76b8:71b1]) by VI1PR04MB5327.eurprd04.prod.outlook.com
 ([fe80::9547:9dfa:76b8:71b1%7]) with mapi id 15.20.2750.021; Tue, 25 Feb 2020
 08:12:10 +0000
From: Peter Chen <peter.chen@nxp.com>
To: Macpaul Lin <macpaul.lin@mediatek.com>
Subject: Re: [PATCH v2] usb: gadget: f_fs: try to fix AIO issue under ARM 64
 bit TAGGED mode
Thread-Topic: [PATCH v2] usb: gadget: f_fs: try to fix AIO issue under ARM 64
 bit TAGGED mode
Thread-Index: AQHV6mDVZR8qi0sUNEueYlefbym6aKgrkc4A
Date: Tue, 25 Feb 2020 08:12:10 +0000
Message-ID: <20200225081211.GA6447@b29397-desktop>
References: <1582472947-22471-1-git-send-email-macpaul.lin@mediatek.com>
In-Reply-To: <1582472947-22471-1-git-send-email-macpaul.lin@mediatek.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peter.chen@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 31581cb2-dc8d-4a67-8230-08d7b9ca69bf
x-ms-traffictypediagnostic: VI1PR04MB3309:
x-microsoft-antispam-prvs: <VI1PR04MB33092E22A0417A5CAEF103F18BED0@VI1PR04MB3309.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2657;
x-forefront-prvs: 0324C2C0E2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(7916004)(346002)(366004)(376002)(396003)(39860400002)(136003)(199004)(189003)(478600001)(6486002)(81166006)(81156014)(71200400001)(44832011)(2906002)(6512007)(6506007)(5660300002)(8676002)(66946007)(316002)(4326008)(7416002)(54906003)(9686003)(8936002)(66446008)(64756008)(66556008)(66476007)(53546011)(33656002)(33716001)(1076003)(6916009)(76116006)(26005)(91956017)(86362001)(186003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB3309;
 H:VI1PR04MB5327.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /sqDL7DDqp8tILghRoXL53bHSi8NzjmeF03fz2dvqd1CRsjntrACWEj0+aVx8lamkAcqvFclSDT8K+l0W6Hv6Gv0DZ/FbuZnq/RoR9Xs5NOnFPoG7neG/wjeUX762bqH5fB8py7kAhelnNntjS4LyYEo34Siq9qqmBkbjKm1mu38/oZRkNsu59KmiI4uiR3dO5n4IYuXd6Xc1TDfBtzHgdHlR0QB09yCiDMN2YFU2w/ek6WI15m6PxoCPrGuv5LNjnk2PcVFxN+uv6xYpUW76hcm51cKSpK/Kv4S2CfF03XalAzOc09z6F8dSHSabOwUQvIWauB3pkNWb/wzy5h6I6aI+sjH4/pDEOTHNSPzYQSzgFKxEzjs4MShCR/yxYDNTY4YLIEhMWMYT/VmAIFwS4HwKgVhvIVU0L+qi5Va2fvjnuqIIAzduHLIpk6MLq5d
x-ms-exchange-antispam-messagedata: 9N37SJ0OBEkZX4Ef7/QTKUeBRNKwXIyHzT4T1PZOEfFqGjBxCcstY13PnASRblINzwTAV3YzsaIamQMUtPNnkdiS3aeFNhKHVRP5aDRN/+mvzxRGvY3Rty2TwokMGueh0tzvTLGIXsss2LU3EqmK8g==
x-ms-exchange-transport-forked: True
Content-ID: <B737EEDE0836064BB66A40339B2FBCBA@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 31581cb2-dc8d-4a67-8230-08d7b9ca69bf
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Feb 2020 08:12:10.3745 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gcnqnROLTacTG7acODQnDbhDskMnkKgB1wDz9VrdAJ67fhzJRb76MaCMFWs3RwzB2LJ//LSlSJ6SMpPuuHre7w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB3309
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_001214_867443_CCC30671 
X-CRM114-Status: GOOD (  18.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.21.64 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Sasha Levin <sashal@kernel.org>, Shen Jing <jingx.shen@intel.com>,
 CC Hwang <cc.hwang@mediatek.com>,
 Mediatek WSD Upstream <wsd_upstream@mediatek.com>,
 Jerry Zhang <zhangjerry@google.com>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 Loda Chou <loda.chou@mediatek.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 John Stultz <john.stultz@linaro.org>, Al Viro <viro@zeniv.linux.org.uk>,
 Vincent Pelletier <plr.vincent@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20-02-23 23:49:07, Macpaul Lin wrote:
> This issue was found when adbd trying to open functionfs with AIO mode.
> Usually, we need to set "setprop sys.usb.ffs.aio_compat 0" to enable
> adbd with AIO mode on Android.
> 
> When adbd is opening functionfs, it will try to read 24 bytes at the
> fisrt read I/O control. If this reading has been failed, adbd will

%s/fisrt/first

> try to send FUNCTIONFS_CLEAR_HALT to functionfs. When adbd is in AIO
> mode, functionfs will be acted with asyncronized I/O path. After the
> successful read transfer has been completed by gadget hardware, the
> following series of functions will be called.
>   ffs_epfile_async_io_complete() -> ffs_user_copy_worker() ->
>     copy_to_iter() -> _copy_to_iter() -> copyout() ->
>     iterate_and_advance() -> iterate_iovec()
> 
> Adding debug trace to these functions, it has been found that in
> copyout(), access_ok() will check if the user space address is valid
> to write. However if CONFIG_ARM64_TAGGED_ADDR_ABI is enabled, adbd
> always passes user space address start with "0x3C" to gdaget's AIO

%s/gdaget/gadget

> blocks. This tagged address will cause access_ok() check always fail.
> Which causes later calculation in iterate_iovec() turn zero.
> Copyout() won't copy data to userspace since the length to be copied
> "v.iov_len" will be zero. Finally leads ffs_copy_to_iter() always return
> -EFAULT, causes adbd cannot open functionfs and send
> FUNCTIONFS_CLEAR_HALT.
> 
> Signed-off-by: Macpaul Lin <macpaul.lin@mediatek.com>
> ---
> Changes for v2:
>   - Fix build error for 32-bit load. An #if defined(CONFIG_ARM64) still need
>     for avoiding undeclared defines.
> 
>  drivers/usb/gadget/function/f_fs.c |    5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/usb/gadget/function/f_fs.c b/drivers/usb/gadget/function/f_fs.c
> index ce1d023..728c260 100644
> --- a/drivers/usb/gadget/function/f_fs.c
> +++ b/drivers/usb/gadget/function/f_fs.c
> @@ -35,6 +35,7 @@
>  #include <linux/mmu_context.h>
>  #include <linux/poll.h>
>  #include <linux/eventfd.h>
> +#include <linux/thread_info.h>
>  
>  #include "u_fs.h"
>  #include "u_f.h"
> @@ -826,6 +827,10 @@ static void ffs_user_copy_worker(struct work_struct *work)
>  	if (io_data->read && ret > 0) {
>  		mm_segment_t oldfs = get_fs();
>  
> +#if defined(CONFIG_ARM64)
> +		if (IS_ENABLED(CONFIG_ARM64_TAGGED_ADDR_ABI))
> +			set_thread_flag(TIF_TAGGED_ADDR);
> +#endif
>  		set_fs(USER_DS);
>  		use_mm(io_data->mm);
>  		ret = ffs_copy_to_iter(io_data->buf, ret, &io_data->data);
> -- 
> 1.7.9.5

-- 

Thanks,
Peter Chen
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
