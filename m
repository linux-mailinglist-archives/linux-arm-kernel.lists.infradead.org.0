Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C45A63264
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 09:51:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FJQ9f1+zQBYGTkv5RWffYIhyC5vYG/2fZu+cnCKzrig=; b=EEn3plYRxjYjDF
	T4yKiPOsYxsZYYmyn7WpQ4lSGxZmB+DqLrLotoPMgxFQvrny8+j6gQlFj19nRhjItPfHVT/E1MN/5
	uQy5BFQ3hllqQZYoQB8QXAwVXEeEyVNGzZTw4LriuKAFnS4G2dQuyaqITImxVAsMhcBSn8KPTBbDh
	PuAYHwPkLuyCG8PM+l4lzbcP9p/is292OT8tKdAAduluRWfQha4yX1AkVFvIC7ivL/1Wt8BabUkkf
	WIYvYSZsapuxd6q7oMXBbtkc3mkup9TKsL/nw1jAwMSL6hwYeu4PXtM+lDHsFNGoGhdXwlJHYBzKS
	egBVF3PnGXK97MkNL/5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkkug-0000yY-2T; Tue, 09 Jul 2019 07:51:46 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkkuR-0000xe-Rp
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 07:51:33 +0000
Received: by mail-pl1-x644.google.com with SMTP id m9so5973470pls.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jul 2019 00:51:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Smrq/vDbxcQl6KW/Rh/T3b+nDUYxB6msX/ZOzbcRi2U=;
 b=fNEDVX0HL7EI/I6m5GdoAodJt4iCk6yzm4tuOh8ajweaBLKmh9prOUVmdOdhKNPrl/
 dF3nyni3L1tkHubOOl5yp+pZHwYmI6cZ1c3rOLgyQyUyMlHl/uO3Y8rQUElrUmbk4b/E
 s3cRHEU3henZjAe+fTlvzeiQrrhtUSUBrqQ9jp67liLLgUB7XiuawxR83WCDpO5YTeIt
 JTLzoOs1VfiHTiiaVAcLZKR7PrE9gOkt7Y0/jN1HQSKYAeTxJ2E1przF39kV1CKPCCFm
 rFc04TDY3RgryFc0c4/s+B1NzXD/tC82rN9nwc7Bpq3ybzaqCUVXRn1lzKeWeLOVbX7i
 xT6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Smrq/vDbxcQl6KW/Rh/T3b+nDUYxB6msX/ZOzbcRi2U=;
 b=MITlGwoLQ3dV2uhtskIqc4nL2d+1JJpYE7BBINU9HhgOWmBw36o+tZNstk+NMbMFJq
 WPz9iRjyhWjciX0f+NIambnOmUUCE3muD7izfgil452aQuC36wWmkuIf+gHXW3731uQO
 cpPzs8GXj+zWXlEbbFYKuX04mn4p2+AayKigIb9GlXeZyJCoN8LgiDOHwjx67SNKYZj5
 TAvFFwo8cl2dT+5cOwy7YizPNeazB13oFRZFLyC/upjkDFTHV4H3i29pvVk410hCIL4A
 DcxBrlkBgutm1akuczTRx+cxw+AnD4uZZ8vroA0TF9PwCT1IK6aOS3Rzmldgfb9WFH2Y
 vBTA==
X-Gm-Message-State: APjAAAXj+wkdNNETvUOt+zlZTmNMUrM7KgXEEi5tRnWUK0QdZMM/WPv9
 Xf4GweEsiKjy6MFi66HC+068TQ==
X-Google-Smtp-Source: APXvYqwdU6F7Yn1VJPjF6KItVXdlcrtq2LV7yj+CbXHG4RpzQKgCu+AE6ystgZtAN6RbIoZ7toO/rA==
X-Received: by 2002:a17:902:9041:: with SMTP id
 w1mr30857440plz.132.1562658691215; 
 Tue, 09 Jul 2019 00:51:31 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id p68sm32770294pfb.80.2019.07.09.00.51.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 09 Jul 2019 00:51:21 -0700 (PDT)
Date: Tue, 9 Jul 2019 13:21:19 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Anson.Huang@nxp.com
Subject: Re: [PATCH 1/3] opp: of: Support multiple suspend OPPs defined in DT
Message-ID: <20190709075119.rg6ktsg7nwdadsmd@vireshk-i7>
References: <20190709071056.26361-1-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190709071056.26361-1-Anson.Huang@nxp.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_005131_900565_4819A040 
X-CRM114-Status: GOOD (  13.58  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: mark.rutland@arm.com, nm@ti.com, ping.bai@nxp.com, ccaione@baylibre.com,
 agx@sigxcpu.org, angus@akkea.ca, leonard.crestez@nxp.com, festevam@gmail.com,
 abel.vesa@nxp.com, andrew.smirnov@gmail.com, vireshk@kernel.org,
 Linux-imx@nxp.com, devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 s.hauer@pengutronix.de, robh+dt@kernel.org, daniel.baluta@nxp.com,
 linux-arm-kernel@lists.infradead.org, aisheng.dong@nxp.com, sboyd@kernel.org,
 linux-kernel@vger.kernel.org, kernel@pengutronix.de, shawnguo@kernel.org,
 l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09-07-19, 15:10, Anson.Huang@nxp.com wrote:
> From: Anson Huang <Anson.Huang@nxp.com>
> 
> With property "opp-supported-hw" introduced, the OPP table
> in DT could be a large OPP table and ONLY a subset of OPPs
> are available, based on the version of the hardware running
> on. That introduces restriction of using "opp-suspend"
> property to define the suspend OPP, as we are NOT sure if the
> OPP containing "opp-suspend" property is available for the
> hardware running on, and the of opp core does NOT allow multiple
> suspend OPPs defined in DT OPP table.
> 
> To eliminate this restrition, make of opp core allow multiple
> suspend OPPs defined in DT, and pick the OPP with highest rate
> and with "opp-suspend" property present to be suspend OPP, it
> can speed up the suspend/resume process.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  drivers/opp/of.c | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)

Please update the DT bindings first.

FWIW, all three patches look fine otherwise.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
