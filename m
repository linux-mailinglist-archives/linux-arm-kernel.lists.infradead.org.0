Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A927D110358
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 18:22:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GGcLrZ0QdZaAmPLexZ8YS8vZ8FUYPDEVXuA3axRGAmw=; b=JzIAgTBrgxkN3N
	Iu2Ah/AjY+82n10sDFax+BoEcpNmGXTYhdAX0DvvGrhKvy+ZM7eshxLM1XRtjJtQPpDFZFLb+5X8i
	BFefv/VAA9cPb4oLck71hsLNrPFYO7jpQ3KU4jFHIw8rH5PiO94uOUPXiucDrn8AitblFgbSsOjR8
	MaFMMeUDt49NYc9UI5RqzVyLJvFsGmWdaO32Kz9gBnMCDmH2S/4oeZ20ZafuzUJWxo4GGwU4WMRus
	qFjwAXGKwWmD64BmQB3C1VeQOqYYbWh1GpkLcmxU4XF8HPp+XBqEarLWeo17YWmyHPQpTM4K6nEdp
	JN+xybhHV8G/Sa9rLFiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icBsr-0002eO-BN; Tue, 03 Dec 2019 17:22:45 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icBsl-0002df-Ho
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 17:22:40 +0000
Received: by mail-ot1-f66.google.com with SMTP id k14so3636776otn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Dec 2019 09:22:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=cMsreEXFeCso0tiE1Nbi7IoMG046yHL0rtrvdWFtaho=;
 b=dJVNcb9vNxGlQiwWVLduYHWQOHVKdTewjlrkcX1URpF6Aw600Hd5qViqesgBJndP0I
 y7pHAOWKHnQhnCp0aW7J6hB2y0aeTw6dJH2iSPR/Z3CwTxaFfNwUr/BNk2pri0YyQw1m
 cOv2BWApHqg+DfNXGKAyXbh2lNV6LUVct2mUGf/qyz/gMDVAieXeDrWEN8og1vBkFWsZ
 Hq7XwznewGeiMyduUcHFPGypFfjuNYzyGBUxVu6JYE50pinLqa0dAsl1C++PItZUunTI
 3lSCZJDBgCVTH2UXnWvlj5fi5BolFWp0I2JthU5NlMYYAKqu4ZClxq/10Z6W9rxLZSIN
 /HFA==
X-Gm-Message-State: APjAAAWHwGhYUTqbDsNf8ZtvYxkaKucIzPhlReXZLgaWccaT3qEKakTA
 JXP2mVddEzwLQXDPxO8K4Q==
X-Google-Smtp-Source: APXvYqzdAeQkbqgwFi1RtJ6Rg4XHcx5KcXKSdBUUJgdow8E/nrkzuK5u2+pt9+kZAbkm25CI2cr0YQ==
X-Received: by 2002:a05:6830:120c:: with SMTP id
 r12mr4093703otp.327.1575393757792; 
 Tue, 03 Dec 2019 09:22:37 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id b81sm1376539oia.0.2019.12.03.09.22.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Dec 2019 09:22:36 -0800 (PST)
Date: Tue, 3 Dec 2019 11:22:35 -0600
From: Rob Herring <robh@kernel.org>
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Subject: Re: [PATCH 1/2] dt-bindings: msm: Rename cache-controller to
 system-cache-controller
Message-ID: <20191203172235.GA18507@bogus>
References: <cover.1573814758.git.saiprakash.ranjan@codeaurora.org>
 <83394ae827ce7c123228b749bcae2a2c470e88a4.1573814758.git.saiprakash.ranjan@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <83394ae827ce7c123228b749bcae2a2c470e88a4.1573814758.git.saiprakash.ranjan@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_092239_590721_A6061FE9 
X-CRM114-Status: GOOD (  12.42  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org,
 Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 Doug Anderson <dianders@chromium.org>, Rajendra Nayak <rnayak@codeaurora.org>,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 bjorn.andersson@linaro.org, Andy Gross <agross@kernel.org>,
 Rishabh Bhatnagar <rishabhb@codeaurora.org>,
 Stephen Boyd <swboyd@chromium.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 15 Nov 2019 16:29:11 +0530, Sai Prakash Ranjan wrote:
> DT schema checks for the node name 'cache-controller' and enforces
> that there has to be a cache-level associated with it. But LLCC is
> a system cache and does not have a cache-level property and hence
> the dt binding check fails. So let us rename the LLCC cache-controller
> to system-cache-controller which is the proper description and also
> makes the schema happy.
> 
> Suggested-by: Stephen Boyd <swboyd@chromium.org>
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> ---
>  Documentation/devicetree/bindings/arm/msm/qcom,llcc.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
