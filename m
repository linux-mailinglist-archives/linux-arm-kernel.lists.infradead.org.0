Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCC40136BCE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 12:16:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c0LibxUVYeLQa7bQgfnUCwwjGmqpf8RzpEA43Oq1wjE=; b=eCGEIgHe4nSbyR
	QwM+xK92M+0CcsRm8UUpGQaezdY+NKgVqm52dTZITqn0IaNt2jajC3spvWd1pxnO1Gyar+cBlFRML
	2sNMe33Iiwd1CNMgZF0OYh/13rnt60duvat8gDOYyp84EyZSYawCJlRhLMUB2tpQXSrHfMhANRUGe
	+USfeCudNk08qUatotoRI40Izeg3hHrjub9QetOKniP3PmrMADFamsrYzECz+FZK9NgeC6MFdKZra
	ugkjXZFMrFvRxe+5s9F0DHwX8nwFM07zkj8NaAiVfODPsTF/2Js+AqfZ63DLJ7UxmZvR1raE1p+7A
	/BmtV/c4wRnz0rhNp0rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipsHI-0006I3-B5; Fri, 10 Jan 2020 11:16:32 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipsH6-0006EZ-MU
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 11:16:22 +0000
Received: from mail-qt1-f172.google.com ([209.85.160.172]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MFb38-1itjLE3nhe-00HANx for <linux-arm-kernel@lists.infradead.org>; Fri,
 10 Jan 2020 12:16:15 +0100
Received: by mail-qt1-f172.google.com with SMTP id i13so1575301qtr.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 Jan 2020 03:16:13 -0800 (PST)
X-Gm-Message-State: APjAAAWI3QPhF58ePf6/f8k9PLmAq5jQCOU4+lWSonHI8/P1/ckoTyl2
 iVQx/LM3+fg1bwEIB/xxuV3JpOI73bpNZ4j5dyM=
X-Google-Smtp-Source: APXvYqzPSbZnYflLqoz2lIHl1CaiiXPaPPS2fouoKNm2ggHKUo+eBphF/usWgjsuuKRSk7/g/+RZJMdHGQs0hp2ZmSI=
X-Received: by 2002:ac8:6153:: with SMTP id d19mr1898412qtm.18.1578654972819; 
 Fri, 10 Jan 2020 03:16:12 -0800 (PST)
MIME-Version: 1.0
References: <3f5567ec928e20963d729350e6d674c4acb0c7a0.1578648530.git.viresh.kumar@linaro.org>
In-Reply-To: <3f5567ec928e20963d729350e6d674c4acb0c7a0.1578648530.git.viresh.kumar@linaro.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 10 Jan 2020 12:15:56 +0100
X-Gmail-Original-Message-ID: <CAK8P3a1MLyP4ooyEDiBF1fE0BJGocgDmO1f5Qrvn_W5eqahz8g@mail.gmail.com>
Message-ID: <CAK8P3a1MLyP4ooyEDiBF1fE0BJGocgDmO1f5Qrvn_W5eqahz8g@mail.gmail.com>
Subject: Re: [PATCH V2] firmware: arm_scmi: Make scmi core independent of
 transport type
To: Viresh Kumar <viresh.kumar@linaro.org>
X-Provags-ID: V03:K1:PYnfW+WOKMGMI6zUm4c1TEH3SXzMvvI85uFQPE7mtgekrufNmmk
 zz9EnvH9UZmGM9IwgieAN4Gh9sIf5ty/5wc3C3LiEVfh/mXYBRmhRaQXK/Zi3WclJXqtSdD
 FfwKa0OjaSjb8JdcJpXqNR9w69uemloaA0qvW4FCd91+jp0qv6tVdJBV0jzTI2VmwB6oNMW
 wGSt/sc1J30OVPROo6YyA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:vTJXkNBqJ2k=:ghO3diM/3AcsY0EK/TPCWK
 aVZ9OC/ayLlII50TjDiL6alkWen6EyAmOTSZMtbhbW4s/+PnA8ahwZ1zkdxJQzrcLotOuPiFT
 DrUdcuWuW7iNXwvgm4lQEiOl46NolEsZ2oEaK1by60a+HnDibdfD6Qae1ekANrZwarziPe/Ne
 IujdrXa6X0bsl2MpqAAFlUCCnIo6EqAeTTt/3yHLzN69kD5RjC/DFp0n0URBeocEu8VOWy28g
 W1nN66GDglvVWNU9Nhe3CASros5WRzqVEzoQYwiHRKMdXlcoTFb7wX/XQzh9qQs9FaOQ3VRMD
 6c1H8G60IvqY71Ay+fvSUODa7ZvrI3IR8PUPtSrmI3iHOtSIeK/tBn9WfYtZrwaOJGIV3+KUO
 KA9twAEcaUMi/AX0hvm/E4UPY8N9HSZmize2zK2iUz4FiWoLzFCfMsD2PwB7kL7WJ1bQm/fnI
 7NAQDq49J9pSToZ6+jKfm8xoZn6OBdUceat/2qBFbdgq9/8/4jmLRsBvTTDIrC5tyIYExv02c
 fymzkoGNIS3yVoa+WBcpcs9RVstLJAlTaf2kbWy0hL7kqb+jrCUv/kbhI29gslHP4etha9jYQ
 Hken3jvjbwEvkt/HlPiAOxIvBePjNUENKrUQGoAu05yoaxeM7dDdI2+ljvtUp3RENLU3fCpVH
 k9jYRtmY8EOwgCkO5A+8cPzL7F2fYfYikR6bONalDbEdMNTTqvCxevVivzSMnpxh0U8Wgn6Eq
 TtJJwU0DXcq3ZfRfVERI2PbVFASX8YMcVdPrNcPjt5MPyTXxLptQzazsNkVqGc2vjfALW5F3n
 GxHE6i6uOhsvpbtS4YzodDZGvYgyZGxXfUDvD1cINSfRiJ1QGKELOr5amwGib6ypcl4A9LAn+
 K/ciifavMqX3zhvIeiHA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_031621_021546_8CC127AD 
X-CRM114-Status: GOOD (  16.43  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: peng.fan@nxp.com, Jassi Brar <jassisinghbrar@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 cristian.marussi@arm.com, Sudeep Holla <sudeep.holla@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 10, 2020 at 10:43 AM Viresh Kumar <viresh.kumar@linaro.org> wrote:
>
> The SCMI specification is fairly independent of the transport protocol,
> which can be a simple mailbox (already implemented) or anything else.
> The current Linux implementation however is very much dependent of the
> mailbox transport layer.
>
> This patch makes the SCMI core code (driver.c) independent of the
> mailbox transport layer and moves all mailbox related code to a new
> file: mailbox.c.
>
> We can now implement more transport protocols to transport SCMI
> messages, some of the transport protocols getting discussed currently
> are SMC/HVC, SPCI (built on top of SMC/HVC), OPTEE based mailbox
> (similar to SPCI), and vitio based transport as alternative to mailbox.
>
> The transport protocols just need to provide struct scmi_desc, which
> also implements the struct scmi_transport_ops.
>
> Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
> ---
> V2:
> - Dropped __iomem from payload data.

Simply dropping the __iomem isn't much better, now you get other
type mismatches.

> - Moved transport ops to scmi_desc, and that has a per transport
>   instance now which is differentiated using the compatible string.
> - Converted IS_ERR_OR_NULL to IS_ERR.

These look good to me.

> + * @payload: Transmit/Receive payload area
> + * @dev: Reference to device in the SCMI hierarchy corresponding to this
> + *      channel
> + * @handle: Pointer to SCMI entity handle
> + * @transport_info: Transport layer related information
> + */
> +struct scmi_chan_info {
> +       void *payload;
> +       struct device *dev;
> +       struct scmi_handle *handle;
> +       void *transport_info;
> +};

Maybe you can wrap the scmi_chan_info inside of another
structure that contains  the payload pointer, and use container_of
to convert between them?

It's not obvious which parts of the structure should be shared and
which are transport specific.

> -static void scmi_rx_callback(struct mbox_client *cl, void *m)
> +void scmi_rx_callback(struct scmi_chan_info *cinfo, struct scmi_xfer *t)
>  {
>         u8 msg_type;
>         u32 msg_hdr;
>         u16 xfer_id;
>         struct scmi_xfer *xfer;
> -       struct scmi_chan_info *cinfo = client_to_scmi_chan_info(cl);
>         struct device *dev = cinfo->dev;
>         struct scmi_info *info = handle_to_scmi_info(cinfo->handle);
>         struct scmi_xfers_info *minfo = &info->tx_minfo;
> -       struct scmi_shared_mem __iomem *mem = cinfo->payload;
> +       struct scmi_shared_mem *mem = cinfo->payload;
>
>         msg_hdr = ioread32(&mem->msg_header);

This is where it goes wrong: you cannot pass a kernel pointer
without __iomem into ioread32(). Building the driver with sparse
(using "make C=1") should show you this and possibly other
related conversion bugs.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
