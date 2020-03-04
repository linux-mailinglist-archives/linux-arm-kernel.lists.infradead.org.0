Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90370179555
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 17:32:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oY3Hf7LNTB+AOg4XuWBMmYilLGzY4cU4hbNubb2q6rU=; b=RxuSQAbSBur8w/
	i5dkWIac+TWZwtfQKZlywEg42++bgNkxdk3AeH3F49AfWMkICq10a/2cTPAFI5DXNXiiipxk/h28e
	ZwUpuYEd51AWBDFRQI3yQXFFxAt+f0TkAqq66EJETFgk5XhYDRdHpTDGChcrhqZkc0wjE3woft7XQ
	upPEmKPt5SLC1Md2K4hJroKE+MjbtvTjtaAjHTclWyDe7kx8xZeWPxSGQGsJAV+PbANh+7Eu/V6vc
	d1qq0iKpusu8zUVSc58ez9P6YavrMQVON5RFHCx3PJ2vVn5g6xizq12JiPwSI+Jzk61AwmD+bhgTQ
	job/cHF89l8mkge2CHGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9WwF-0000Bb-JN; Wed, 04 Mar 2020 16:32:03 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9Wvw-0000Ai-KJ
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 16:31:45 +0000
Received: by mail-ot1-f68.google.com with SMTP id f21so2582187otp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Mar 2020 08:31:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=rFXkjTWHsplVbdF1oVVcfM4j+4ayf9BM6NdtGQfJExk=;
 b=ogCT2uFfpAlBRRZoicnzuw51Twid/Hp9J+cvbhBr9/YNqni5r/IdIoKv6ismYo6uu0
 ipXycTnOxrGCw/6FBKgygR4U9IQnhQH/3vlDYX9VXNH80f2+edM9mSp/juqlVGAbxufs
 W6NpmiyJIxYdngy/Q+mqP2UBGuw6/mYt6ZA3DGo++aL2vS51D2qRJgWBFppVQNrC9gyc
 eKAw9tYo7YEsroNFA8ytW+m2+49KZoN85soEXhjcrobqyF7JZtfFWR+hZDWKT1xVmp5h
 MW2CIhoFaF48vyA6tsvOd97b/Z+HtL2njOnCeG29xpIJutw/jqOOPTkjOYRp39NF2i1O
 cuCw==
X-Gm-Message-State: ANhLgQ0GO4VVO73PrAhlP+uboC10f5Zo69+/L2n0ntsQ2NeoLOLNNDpO
 I3qNmTpmEI3s5bio+CLgHg==
X-Google-Smtp-Source: ADFU+vu1QDyc1xCSXEIrcz7/NjjRmHetwn5Pi7gqrRpZiLN1BGuoB0i/i/2pvrzhj/J3rgDEWZp6Rg==
X-Received: by 2002:a9d:68ce:: with SMTP id i14mr3122164oto.233.1583339502993; 
 Wed, 04 Mar 2020 08:31:42 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id b2sm6697131oii.20.2020.03.04.08.31.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Mar 2020 08:31:42 -0800 (PST)
Received: (nullmailer pid 16517 invoked by uid 1000);
 Wed, 04 Mar 2020 16:31:41 -0000
Date: Wed, 4 Mar 2020 10:31:41 -0600
From: Rob Herring <robh@kernel.org>
To: peng.fan@nxp.com
Subject: Re: [PATCH V4 1/2] dt-bindings: arm: arm,scmi: add smc/hvc transport
Message-ID: <20200304163141.GA16460@bogus>
References: <1583201219-15839-1-git-send-email-peng.fan@nxp.com>
 <1583201219-15839-2-git-send-email-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1583201219-15839-2-git-send-email-peng.fan@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_083144_669153_7A17A020 
X-CRM114-Status: GOOD (  10.23  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: devicetree@vger.kernel.org, Peng Fan <peng.fan@nxp.com>,
 f.fainelli@gmail.com, viresh.kumar@linaro.org, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, linux-imx@nxp.com, sudeep.holla@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue,  3 Mar 2020 10:06:58 +0800, peng.fan@nxp.com wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> SCMI could use SMC/HVC as tranports. Since there is no
> standardized id, we need to use vendor specific id. So
> add into devicetree binding doc.
> 
> Also add arm,scmi-smc compatible string for smc/hvc transport
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  Documentation/devicetree/bindings/arm/arm,scmi.txt | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
