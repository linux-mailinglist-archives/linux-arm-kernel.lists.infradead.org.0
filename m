Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 885471900F3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 23:12:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a9Vvf0tCSnbNXew1q1Rwq+6r+zOr1UvQLd6ESQ0ta/o=; b=P67HVx2PcE5n3B
	n3Zd3QSEuz/4MpJQNaQuXDySbQ0XSAxuKmAM3uK0KcHgwBFKLOgR1X77ElJ1WKkRuoJrT2ueg2joW
	UXFYERzA1c4HpNf/UKRq5oDCkdsA0ZR8M4uetOyzeLaVNM75YRw8Zi4U3Qmc82IknlvCkfDFMWynp
	Z1xXUsGB52oJw4253LTZHmtSCfPPXSjqk0vOCxBw66aGb4IrgZMDPvJUpr0N94Xk7f2NLWg6rJTNy
	wFrwHHLa9tBIpPtmhGqvrTWMj4bv/LC7eTviW97pAjtkXgoQFW0NsRVV/7OlfjCfTgrsfHygvXGb6
	1Dp600Ssem6LYcwAT2qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGVIh-0003py-Pu; Mon, 23 Mar 2020 22:12:03 +0000
Received: from mail-io1-f66.google.com ([209.85.166.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGVIV-0003kG-Lu; Mon, 23 Mar 2020 22:11:53 +0000
Received: by mail-io1-f66.google.com with SMTP id q128so16069834iof.9;
 Mon, 23 Mar 2020 15:11:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=U1+vG2jcfIWPGJPzyBp74dMfazPVWUvbyc5a9UEJny4=;
 b=RL2lwf6J216CNgOrotp8NKxEn7ekJTWmxBguL0PVF8BbUpYsG7WJlDX5S1WisNx5VR
 4T3JfkHZWpg4mtnhBgFzLaoUfGxq0RkyLYKuhjptUXkklG0WhcTcRDWDEiJutgQ2n/9o
 kxPFNy9tMxAMcxEmts4t4BBjYxCo3nV0EgXywL2C9IWL3GIuJhGeyuFszx2du/1QMCPo
 bBCtuhXMOsoGbxtcF1rVuA8RRtq/j3qqPXXs5ZB38IP8eTnpotJJDlstRJ+rykWeemF2
 37FBOrw8i/F5hINdlVBAbPNaMXjdJNFkBOocjk6Ne07ToFRXJ/LhfQjZ47E4MFT1+ceu
 g0+w==
X-Gm-Message-State: ANhLgQ0f+HCKa2Q3fI0vpHHUgApkeuOKWCBWfKXxXdSP4OXblzi0jjXI
 nrUWhBA7CWjis7PvHIjf6Q==
X-Google-Smtp-Source: ADFU+vvetfKAazjwYEUQHArdmRpyTlu8v3T8bGybvvKdNYFA44bdB5Y0qTiQGUn5qPEk9T9rFv8mPw==
X-Received: by 2002:a05:6602:2251:: with SMTP id
 o17mr10228130ioo.101.1585001510153; 
 Mon, 23 Mar 2020 15:11:50 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id l6sm5745706ilh.27.2020.03.23.15.11.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Mar 2020 15:11:49 -0700 (PDT)
Received: (nullmailer pid 29035 invoked by uid 1000);
 Mon, 23 Mar 2020 22:11:48 -0000
Date: Mon, 23 Mar 2020 16:11:48 -0600
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v1 2/2] dt-bindings: sound: rockchip-i2s: add
 #sound-dai-cells property
Message-ID: <20200323221148.GA29003@bogus>
References: <20200311174322.23813-1-jbx6244@gmail.com>
 <20200311174322.23813-2-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200311174322.23813-2-jbx6244@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_151151_734391_A74E5B0E 
X-CRM114-Status: UNSURE (   9.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.66 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.66 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org, heiko@sntech.de,
 lgirdwood@gmail.com, robh+dt@kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, broonie@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 11 Mar 2020 18:43:22 +0100, Johan Jonker wrote:
> '#sound-dai-cells' is required to properly interpret
> the list of DAI specified in the 'sound-dai' property,
> so add them to 'rockchip-i2s.yaml'
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  Documentation/devicetree/bindings/sound/rockchip-i2s.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
