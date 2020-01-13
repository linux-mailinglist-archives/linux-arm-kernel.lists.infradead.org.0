Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92223138BEA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 07:42:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+n64PkKE8n2itNBwpNG7cE3HiLaBvZ5sptqk/Yinky4=; b=hbM0gJzU5eCsKH
	2Lfml84LtXqrDDvSYLxuOsBucjlyW8MOtDLxf7yhGhTaVWfJsTBJ0nBfzJWUbkBv3VX9WoQMAMNmR
	SZVEc0QdCaUXgql2AeMi8atBf3OSQggUY1Fwd3E1rFlA+HkI9MUZIlEkAdH1t30ZmcdshFN0Le6hp
	GGYQw5naZ5+lTXIPOlpP5BZB770fA1vseFuVf+gUs3wh78kVVK65qsCfA7nCxFrhUeulDCJ+Cu7PM
	wFrdAc5D6zGhjXdg093t3RzYgYKCShGCqDnN4U1eLvn2lt1qGi7tp8hbtn/eyATPDiGGNvzXuF4jT
	4RaXFjq5ul+V8yLI9+oQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqtQR-0004Yo-1t; Mon, 13 Jan 2020 06:42:11 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqtQJ-0004Xu-Ak
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 06:42:04 +0000
Received: by mail-pf1-x442.google.com with SMTP id 195so4370140pfw.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 12 Jan 2020 22:42:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=BpLUIBBpeUpV1O+9thahetvf61yecpH01T0vJhinKFM=;
 b=b8+l/1SJZQ3yqeJbUvB2xZMyvwiAY6T5D/jZU1adrI6P5kstOLvvZxqhCmkqIwuMep
 sYKEoCzAVeb9IMtcgLMsRlZGj/Njlq+d8Reds/98X5aiMgm3JbziB4SEIwRTkn0+NR9m
 g0KXWevccqv+j1L3ZxtD9evMLz1YZLLTdTSKLRv0pvzSjgHwIL9RmOYo3q/zJDPB0H9S
 xJ7tNU7F6sI2NVOnd606kh9pY3OCZHfIt0oXCLajWOGjWkZp5gqJsLC/fp2f7iHSMkkz
 E2NrmdpyzOj05r/NtlH0SGWLXV4Gzs7spPbOr4zoKiylBRyVGa+XozPgSQKxpvzQ8KdT
 T1UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=BpLUIBBpeUpV1O+9thahetvf61yecpH01T0vJhinKFM=;
 b=VLMM4jQz68S7vwnbFry7aUmsr0VN+0o1xwLKWWL1WCoZatg8AAjDRPJa8CPR5NJ/+4
 mvUnTMwGjdQrzCtdY6WKqpj/T7EcrLq76tqbVe+LBHtf0S4dyBgXO5LxtiQrJqaRHHum
 04tuxv8zsSNyJWVaPEskoyW1qWZBXccxvjLTRYK7GPhRfjScBzkKqhcInxtwpoUz+lk1
 jpa4cVEbr9++UC5l0OAvkVbembNpP/do2O6Go+TgQaJs6KLpRswJFs+ikOU34SRO1RiA
 9KzXYOo6VY1CZD++hy0ALywu12ovSt+IgJDeY1N4ll9aJBQNjaS/dbNFDwmNXEiCnzGC
 gSng==
X-Gm-Message-State: APjAAAXpUZgR71GKdItDiza1nS0lfCDw3x889gF8BtYwIpy80eZUaUGr
 P2vxR47VDTuhV961NT+Ve6skUA==
X-Google-Smtp-Source: APXvYqwOSzh97zQUsBMR/x95EQQ3mxh4f6F/syhe9m9gMY6RlQr3rBc1Dwifd8mJceoMuBatWTlEIw==
X-Received: by 2002:a63:f70b:: with SMTP id x11mr19369380pgh.80.1578897721592; 
 Sun, 12 Jan 2020 22:42:01 -0800 (PST)
Received: from localhost ([122.172.140.51])
 by smtp.gmail.com with ESMTPSA id d3sm12151329pfn.113.2020.01.12.22.41.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 12 Jan 2020 22:42:00 -0800 (PST)
Date: Mon, 13 Jan 2020 12:11:56 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH V2] firmware: arm_scmi: Make scmi core independent of
 transport type
Message-ID: <20200113064156.lt3xxpzygattz3he@vireshk-i7>
References: <3f5567ec928e20963d729350e6d674c4acb0c7a0.1578648530.git.viresh.kumar@linaro.org>
 <CAK8P3a1MLyP4ooyEDiBF1fE0BJGocgDmO1f5Qrvn_W5eqahz8g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a1MLyP4ooyEDiBF1fE0BJGocgDmO1f5Qrvn_W5eqahz8g@mail.gmail.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_224203_375628_5F043030 
X-CRM114-Status: GOOD (  20.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On 10-01-20, 12:15, Arnd Bergmann wrote:
> On Fri, Jan 10, 2020 at 10:43 AM Viresh Kumar <viresh.kumar@linaro.org> wrote:
> >
> > The SCMI specification is fairly independent of the transport protocol,
> > which can be a simple mailbox (already implemented) or anything else.
> > The current Linux implementation however is very much dependent of the
> > mailbox transport layer.
> >
> > This patch makes the SCMI core code (driver.c) independent of the
> > mailbox transport layer and moves all mailbox related code to a new
> > file: mailbox.c.
> >
> > We can now implement more transport protocols to transport SCMI
> > messages, some of the transport protocols getting discussed currently
> > are SMC/HVC, SPCI (built on top of SMC/HVC), OPTEE based mailbox
> > (similar to SPCI), and vitio based transport as alternative to mailbox.
> >
> > The transport protocols just need to provide struct scmi_desc, which
> > also implements the struct scmi_transport_ops.
> >
> > Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
> > ---
> > V2:
> > - Dropped __iomem from payload data.
> 
> Simply dropping the __iomem isn't much better, now you get other
> type mismatches.

Right. So what exactly do you suggest I should do now? Drop __iomem
from the structure's payload field but keep all local variables and
function arguments with __iomem ?

> > - Moved transport ops to scmi_desc, and that has a per transport
> >   instance now which is differentiated using the compatible string.
> > - Converted IS_ERR_OR_NULL to IS_ERR.
> 
> These look good to me.
> 
> > + * @payload: Transmit/Receive payload area
> > + * @dev: Reference to device in the SCMI hierarchy corresponding to this
> > + *      channel
> > + * @handle: Pointer to SCMI entity handle
> > + * @transport_info: Transport layer related information
> > + */
> > +struct scmi_chan_info {
> > +       void *payload;
> > +       struct device *dev;
> > +       struct scmi_handle *handle;
> > +       void *transport_info;
> > +};
> 
> Maybe you can wrap the scmi_chan_info inside of another
> structure that contains  the payload pointer, and use container_of
> to convert between them?

We don't need to convert between the two of them, isn't it ? Are you
referring some other field here ?

> It's not obvious which parts of the structure should be shared and
> which are transport specific.

All transport specific information is kept in the transport specific
structure which is saved here in the transport_info field. Is there
something else that isn't clear ?

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
