Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CCD718357C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 16:52:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=60aDLJjjEi6OmzUS66npSVCYACYrBqqvxXbGVCiTC7k=; b=Qsmow6ONtwo7Ry
	LX4TYRzVFG+G0f/kI23HlAOpTpSLObBZ7Y29Nn63ohIgemhDsWdQUDUiCLjpk9tY5jPkmibX3BBXu
	m++C20cBb0kPjgx18eD1Wgl2xHiAllLeXdhKHQpq6bSwKXYUZ6ie6NkI2TxCY8BqAY3Ji5RPk6Bkm
	Aq1+Bbf1SjwiYjzSB+3qm4iAfu7Q/kSg8FUaAtkpIf9lCyJkrwYzBnep+F0ui81jhcTHpdyMVo9p/
	3E+LGilO1kRqUBRMyP7c6IHUG+zqWShY8J+zunwSnEcrQ8P0tO178z+s4V4Sg+nGBqX1YyIM/bGXD
	avmE88kcmeK4QDfIceyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCQ8U-0004Il-2P; Thu, 12 Mar 2020 15:52:38 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCQ88-0004I5-PS; Thu, 12 Mar 2020 15:52:17 +0000
Received: by mail-ot1-f65.google.com with SMTP id a6so6728362otb.10;
 Thu, 12 Mar 2020 08:52:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Wl+QdR69Vmfg4Y3G8/WF9bc0auAAgV6RS3RNdeDTWcg=;
 b=mMfMTtDdVANnKb0wcUiWYeUKxxA8kT7P1a7j/gLdmtTogjHx6F4hOBh1P183LdR0JB
 yDPrawAHUicvYkpVV8vKJxBpN70WHqklB4Tb+0motu/Z4FUNGKj0qz6XDBkzWlKkNO2r
 GA1Ud6G0N2eFv/7vbDJZwYcKr52WLf0pj8wQ6BNdgfczuq3MJm2MvEBSO/Pt93sOUhUx
 AoCAtlPsUd61mtJdlieHrGkeIjFsXFzqf3LARDuexRGkK/cQwstsKNFu4oN9C2PqHD8B
 wTl+cseNzatmjDFH74W6xMqBmbxrbYV/hQZujYv0pFfTViXTHJpve82QoY9USxlVEVL+
 fMIA==
X-Gm-Message-State: ANhLgQ3kpLPLWxE/SG0BF5jQWWHfiYZXwtsA4swaPSgUsz7SDAx9mSjf
 Jc/cUF+2+CIE2YBGMIq18A==
X-Google-Smtp-Source: ADFU+vusdGHjK+Rla6N8fdXTit4DXa60u0wiRrENKI95Qqe2qfm2CTfE3YLR4Ovt+vr8qimPICdxsw==
X-Received: by 2002:a05:6830:11:: with SMTP id
 c17mr6307470otp.292.1584028336121; 
 Thu, 12 Mar 2020 08:52:16 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id h92sm7104952otb.2.2020.03.12.08.52.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Mar 2020 08:52:15 -0700 (PDT)
Received: (nullmailer pid 27751 invoked by uid 1000);
 Thu, 12 Mar 2020 15:52:14 -0000
Date: Thu, 12 Mar 2020 10:52:14 -0500
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v1 4/5] dt-bindings: i2c: i2c-rk3x: add description for
 rk3308
Message-ID: <20200312155214.GA27689@bogus>
References: <20200305143611.10733-1-jbx6244@gmail.com>
 <20200305143611.10733-4-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200305143611.10733-4-jbx6244@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_085216_824677_0B895D1A 
X-CRM114-Status: GOOD (  10.99  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, heiko@sntech.de, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu,  5 Mar 2020 15:36:10 +0100, Johan Jonker wrote:
> The description below is already in use for rk3308.dtsi,
> but was somehow never added to a document, so add
> "rockchip,rk3308-i2c", "rockchip,rk3399-i2c"
> for i2c nodes on a rk3308 platform to i2c-rk3x.yaml.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
