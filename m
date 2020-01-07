Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52525132F38
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 20:18:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=g1n/56clvFwzCdTvwkJuiUnDAm0C+amsBJvfBgAVczA=; b=LbpgFBj7c9r0y3YDCSWfVGt8Z
	ve8mO0+D4pn3S6K1KsLiWnAC6smblzbBuKxVtAIxgoKls5fJfhHjqlf541WMW9plepCw50Q9r8P4U
	rfx3rjDXO5QuFzgzHmtKwuNLpNJGQBe4IPo7kMIP6hLO7anJJ2icHrUWC4oYjvBfB39Bou72+BTOL
	n+kuCx2hMZXXb4hEmNtYizAebFCz42CGMUC1yri+acOLbDQ6ay9M+aKuTJPFwkWe4QCoZzfktWXwq
	PNrmOSbQW1O8r7ESJOUF8ttviVaHsGKNuy4fm+P/TxOFSgIOFxitiS9/uEzACbv/6vY+FY0EOZPdm
	3l7RX0hAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iouMx-0004rY-T4; Tue, 07 Jan 2020 19:18:23 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iouMp-0004qr-3L
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 19:18:16 +0000
Received: from pps.filterd (m0098410.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 007JGw9K121967; Tue, 7 Jan 2020 14:18:11 -0500
Received: from ppma01wdc.us.ibm.com (fd.55.37a9.ip4.static.sl-reverse.com
 [169.55.85.253])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2xar4988f7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 07 Jan 2020 14:18:11 -0500
Received: from pps.filterd (ppma01wdc.us.ibm.com [127.0.0.1])
 by ppma01wdc.us.ibm.com (8.16.0.27/8.16.0.27) with SMTP id 007JF8X2002457;
 Tue, 7 Jan 2020 19:18:16 GMT
Received: from b03cxnp08027.gho.boulder.ibm.com
 (b03cxnp08027.gho.boulder.ibm.com [9.17.130.19])
 by ppma01wdc.us.ibm.com with ESMTP id 2xajb6dqv0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 07 Jan 2020 19:18:16 +0000
Received: from b03ledav001.gho.boulder.ibm.com
 (b03ledav001.gho.boulder.ibm.com [9.17.130.232])
 by b03cxnp08027.gho.boulder.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 007JI9UZ45679066
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 7 Jan 2020 19:18:09 GMT
Received: from b03ledav001.gho.boulder.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 027C76E04E;
 Tue,  7 Jan 2020 19:18:09 +0000 (GMT)
Received: from b03ledav001.gho.boulder.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 9F6576E050;
 Tue,  7 Jan 2020 19:18:08 +0000 (GMT)
Received: from [9.163.26.112] (unknown [9.163.26.112])
 by b03ledav001.gho.boulder.ibm.com (Postfix) with ESMTP;
 Tue,  7 Jan 2020 19:18:08 +0000 (GMT)
Subject: Re: [PATCH 2/3] media: aspeed: Use runtime configuration
To: Joel Stanley <joel@jms.id.au>, Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
References: <20200107034324.38073-1-joel@jms.id.au>
 <20200107034324.38073-3-joel@jms.id.au>
From: Eddie James <eajames@linux.ibm.com>
Message-ID: <7eedae4f-967f-d563-44e6-9bb3e9679bb7@linux.ibm.com>
Date: Tue, 7 Jan 2020 13:18:08 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20200107034324.38073-3-joel@jms.id.au>
Content-Language: en-US
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-07_06:2020-01-07,
 2020-01-07 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0
 mlxlogscore=999 impostorscore=0 mlxscore=0 priorityscore=1501
 lowpriorityscore=0 suspectscore=0 clxscore=1015 bulkscore=0 phishscore=0
 adultscore=0 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1910280000 definitions=main-2001070152
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_111815_145650_71E5B9A7 
X-CRM114-Status: GOOD (  21.56  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Andrew Jeffery <andrew@aj.id.au>, linux-kernel@vger.kernel.org,
 linux-aspeed@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 1/6/20 9:43 PM, Joel Stanley wrote:
> The aspeed video IP has some differences between SoC families. Currently
> the driver decides which registers to use at compile time, which means
> a single kernel can not be used between platforms.
>
> Switch to using runtime configuration of the registers that vary between
> SoC families. This is in preparation for upcoming ast2600 support.


Reviewed-by: Eddie James <eajames@linux.ibm.com>


>
> Signed-off-by: Joel Stanley <joel@jms.id.au>
> ---
>   drivers/media/platform/aspeed-video.c | 53 ++++++++++++++++++++-------
>   1 file changed, 39 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/media/platform/aspeed-video.c b/drivers/media/platform/aspeed-video.c
> index 8f849d9866af..d70b893fd4cf 100644
> --- a/drivers/media/platform/aspeed-video.c
> +++ b/drivers/media/platform/aspeed-video.c
> @@ -72,11 +72,8 @@
>   #define  VE_SEQ_CTRL_CAP_BUSY		BIT(16)
>   #define  VE_SEQ_CTRL_COMP_BUSY		BIT(18)
>   
> -#ifdef CONFIG_MACH_ASPEED_G5
> -#define  VE_SEQ_CTRL_JPEG_MODE		BIT(13)	/* AST2500 */
> -#else
> -#define  VE_SEQ_CTRL_JPEG_MODE		BIT(8)	/* AST2400 */
> -#endif /* CONFIG_MACH_ASPEED_G5 */
> +#define AST2500_VE_SEQ_CTRL_JPEG_MODE	BIT(13)
> +#define AST2400_VE_SEQ_CTRL_JPEG_MODE	BIT(8)
>   
>   #define VE_CTRL				0x008
>   #define  VE_CTRL_HSYNC_POL		BIT(0)
> @@ -220,6 +217,9 @@ struct aspeed_video {
>   	struct video_device vdev;
>   	struct mutex video_lock;	/* v4l2 and videobuf2 lock */
>   
> +	u32 jpeg_mode;
> +	u32 comp_size_read;
> +
>   	wait_queue_head_t wait;
>   	spinlock_t lock;		/* buffer list lock */
>   	struct delayed_work res_work;
> @@ -243,6 +243,21 @@ struct aspeed_video {
>   
>   #define to_aspeed_video(x) container_of((x), struct aspeed_video, v4l2_dev)
>   
> +struct aspeed_video_config {
> +	u32 jpeg_mode;
> +	u32 comp_size_read;
> +};
> +
> +static const struct aspeed_video_config ast2400_config = {
> +	.jpeg_mode = AST2400_VE_SEQ_CTRL_JPEG_MODE,
> +	.comp_size_read = VE_OFFSET_COMP_STREAM,
> +};
> +
> +static const struct aspeed_video_config ast2500_config = {
> +	.jpeg_mode = AST2500_VE_SEQ_CTRL_JPEG_MODE,
> +	.comp_size_read = VE_OFFSET_COMP_STREAM,
> +};
> +
>   static const u32 aspeed_video_jpeg_header[ASPEED_VIDEO_JPEG_HEADER_SIZE] = {
>   	0xe0ffd8ff, 0x464a1000, 0x01004649, 0x60000101, 0x00006000, 0x0f00feff,
>   	0x00002d05, 0x00000000, 0x00000000, 0x00dbff00
> @@ -572,7 +587,7 @@ static irqreturn_t aspeed_video_irq(int irq, void *arg)
>   	if (sts & VE_INTERRUPT_COMP_COMPLETE) {
>   		struct aspeed_video_buffer *buf;
>   		u32 frame_size = aspeed_video_read(video,
> -						   VE_OFFSET_COMP_STREAM);
> +						   video->comp_size_read);
>   
>   		spin_lock(&video->lock);
>   		clear_bit(VIDEO_FRAME_INPRG, &video->flags);
> @@ -907,7 +922,7 @@ static void aspeed_video_init_regs(struct aspeed_video *video)
>   		FIELD_PREP(VE_COMP_CTRL_DCT_LUM, video->jpeg_quality) |
>   		FIELD_PREP(VE_COMP_CTRL_DCT_CHR, video->jpeg_quality | 0x10);
>   	u32 ctrl = VE_CTRL_AUTO_OR_CURSOR;
> -	u32 seq_ctrl = VE_SEQ_CTRL_JPEG_MODE;
> +	u32 seq_ctrl = video->jpeg_mode;;
>   
>   	if (video->frame_rate)
>   		ctrl |= FIELD_PREP(VE_CTRL_FRC, video->frame_rate);
> @@ -1653,8 +1668,17 @@ static int aspeed_video_init(struct aspeed_video *video)
>   	return rc;
>   }
>   
> +static const struct of_device_id aspeed_video_of_match[] = {
> +	{ .compatible = "aspeed,ast2400-video-engine", .data = &ast2400_config },
> +	{ .compatible = "aspeed,ast2500-video-engine", .data = &ast2500_config },
> +	{}
> +};
> +MODULE_DEVICE_TABLE(of, aspeed_video_of_match);
> +
>   static int aspeed_video_probe(struct platform_device *pdev)
>   {
> +	const struct aspeed_video_config *config;
> +	const struct of_device_id *match;
>   	struct aspeed_video *video;
>   	int rc;
>   
> @@ -1666,6 +1690,14 @@ static int aspeed_video_probe(struct platform_device *pdev)
>   	if (IS_ERR(video->base))
>   		return PTR_ERR(video->base);
>   
> +	match = of_match_node(aspeed_video_of_match, pdev->dev.of_node);
> +	if (!match)
> +		return -EINVAL;
> +
> +	config = match->data;
> +	video->jpeg_mode = config->jpeg_mode;
> +	video->comp_size_read = config->comp_size_read;
> +
>   	video->frame_rate = 30;
>   	video->dev = &pdev->dev;
>   	spin_lock_init(&video->lock);
> @@ -1712,13 +1744,6 @@ static int aspeed_video_remove(struct platform_device *pdev)
>   	return 0;
>   }
>   
> -static const struct of_device_id aspeed_video_of_match[] = {
> -	{ .compatible = "aspeed,ast2400-video-engine" },
> -	{ .compatible = "aspeed,ast2500-video-engine" },
> -	{}
> -};
> -MODULE_DEVICE_TABLE(of, aspeed_video_of_match);
> -
>   static struct platform_driver aspeed_video_driver = {
>   	.driver = {
>   		.name = DEVICE_NAME,

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
