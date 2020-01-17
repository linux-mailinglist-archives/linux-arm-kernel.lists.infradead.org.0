Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26DA8140F18
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 17:37:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q9yWSkSVife1Tg4Q3u7P1HhQMr5IHlfTGyr8a/WdeSc=; b=bMbdoKMRrzmW0Z
	KWagiUlEyQ+A+nUD/nW9gXPUa2ZkXbkyJh+ADuWGanadsC7KBvE+Izbum5wtCsQREU8+vmJc7mJ2D
	inQdjgKJzjt0//OpzYBq5Ehb1ZuS2KqUxx0WBj5Tlvy5CALzQONH1U6UNc71O17E5t5yFOPDqrtVM
	7pFHATH63/MEDq6nO9+Enr64QNVUeySoe7qFRDYdTSL9jiSv05fciwaywAIpVPUFYCdTqNZ1qxPDs
	iY00jUu6AiMcYOnunozS97QtqMaNQfEPN+tn5XX3WH7m9jCdph5Hoa1lkRWnvXBLUGVeBW6KAATay
	H/uayopdzSSoyz8oxVNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isUcH-0001kf-Ip; Fri, 17 Jan 2020 16:37:01 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isUc1-0001iy-JR; Fri, 17 Jan 2020 16:36:50 +0000
Received: by mail-oi1-f194.google.com with SMTP id 13so22667562oij.13;
 Fri, 17 Jan 2020 08:36:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=IewFuBKmGoCSK8RfRVXaLBq0CbcaGKATXKy1D8qkvcQ=;
 b=rk8ExYpxehrlQjKtGwwHrTu5TfJyKYPNLQSIVPbkOFsjXR+0VrO0uFtpBJpxGygwlJ
 cZoBSayMzvv7sa0fooCr2oftiEk/eaS/d2S9siC40YexlOtdoef2H3cty5yZXx5Ahn57
 9RfhulVRc8piEBzw1ggGPvIlW6YDq9BfpEKHBswDhRI4z4BYGQDWGyzUBxNHSasJwN6K
 XZ9rlN43fizqQm1X7Xm4W0miSYd4Xxz5zfeBtlwOx/wupCffrgSs4Hp2WgnpNZp1ZzRN
 NajWQkxx9WCZm3J+uSdnJKWR9MAPOQBtloBCP7BsFRpoOvCr250ouLda4oivOzgf463E
 TfwA==
X-Gm-Message-State: APjAAAX4Js2Jmz9YCyvKQUcgPwRZvK/7uyna/cW24v+eqX2MGL4ZXKlp
 +I7FriFNMY9W0vvLtoOa9g==
X-Google-Smtp-Source: APXvYqyOFq+xE1QS2BO3+poxNMtpcUaYiXNpuJ/xk/dtoMC4kTw/mVBLr9Fbc+codyaUFKv0ygnNUQ==
X-Received: by 2002:a05:6808:9b4:: with SMTP id
 e20mr3833973oig.37.1579279004339; 
 Fri, 17 Jan 2020 08:36:44 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id z21sm8975604oto.52.2020.01.17.08.36.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Jan 2020 08:36:43 -0800 (PST)
Received: (nullmailer pid 1692 invoked by uid 1000);
 Fri, 17 Jan 2020 16:36:42 -0000
Date: Fri, 17 Jan 2020 10:36:42 -0600
From: Rob Herring <robh@kernel.org>
To: Hanjie Lin <hanjie.lin@amlogic.com>
Subject: Re: [PATCH v6 1/6] dt-bindings: phy: Add Amlogic A1 USB2 PHY Bindings
Message-ID: <20200117163642.GA1636@bogus>
References: <1579220504-110067-1-git-send-email-hanjie.lin@amlogic.com>
 <1579220504-110067-2-git-send-email-hanjie.lin@amlogic.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1579220504-110067-2-git-send-email-hanjie.lin@amlogic.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_083645_640005_158D615E 
X-CRM114-Status: UNSURE (   7.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree@vger.kernel.org, Victor Wan <victor.wan@amlogic.com>,
 Hanjie Lin <hanjie.lin@amlogic.com>, Jianxin Pan <jianxin.pan@amlogic.com>,
 Felipe Balbi <felipe.balbi@linux.intel.com>,
 Neil Armstrong <narmstrong@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michael Turquette <mturquette@baylibre.com>, linux-usb@vger.kernel.org,
 Yue Wang <yue.wang@amlogic.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Jian Hu <jian.hu@amlogic.com>, Liang Yang <liang.yang@amlogic.com>,
 Qiufang Dai <qiufang.dai@amlogic.com>, Xingyu Chen <xingyu.chen@amlogic.com>,
 Kevin Hilman <khilman@baylibre.com>, Carlo Caione <carlo@caione.org>,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 17 Jan 2020 08:21:39 +0800, Hanjie Lin wrote:
> Add the Amlogic A1 Family USB2 PHY Bindings
> 
> It supports Host mode only.
> 
> Signed-off-by: Yue Wang <yue.wang@amlogic.com>
> Signed-off-by: Hanjie Lin <hanjie.lin@amlogic.com>
> ---
>  .../bindings/phy/amlogic,meson-g12a-usb2-phy.yaml         | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
