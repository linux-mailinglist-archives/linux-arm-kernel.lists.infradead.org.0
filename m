Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26B51199FB7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 22:02:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n0YAVtVsP3e7480hx7L6j+aA587GqkdQyf7OUy4Cjt8=; b=tPzStjtkkJv9e8
	42Q3CPmkOxIddG1fWN0i0u1HGK8CE+KBwhvmV4LkSMUWM3VV28WtQedtQt3L8Lh7UP11WVlKw0F5M
	3SNfehNPlmivdSrE9ociWyk4fVlyxOUERA/k3Wh5Ktb8dWn+XvS3I0GLlZJlaU0QHV9swnyuZsBax
	BGSnHFQM8wvrR8rryngG9svXqwww0qyoTXNpUXbgw97Ug64066k/04Rd3ckK0WsIdm4ryf7W0COjE
	DhRcdmBKL1JYNY4JWAN36n7lZIkPyFHTaEZBRaf1sx4wNlZKIgM5FN72u0tBB8T6woQHfbcW1Z7n3
	Pcx5n8PXWKF/UiMaT5Gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJN62-00058C-GD; Tue, 31 Mar 2020 20:02:51 +0000
Received: from mail-il1-f180.google.com ([209.85.166.180])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJN5q-00057L-HD
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 20:02:39 +0000
Received: by mail-il1-f180.google.com with SMTP id k29so20702225ilg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Mar 2020 13:02:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=upP4G73Ul2SBmEIEQRpdxDJ/Oi/LqfJPjjsfAUlUCuA=;
 b=EzPZtKoaccK/ycdJgKkksOmm7qJv7o8JTZcs4ZJ796NeV/rvA+8oKavT/yr91FR4vP
 ZtWyhEgjN11KqGW2uIx1NhUvjt2J9s8CU6hM6PdXGA2AtMkhnx627ubge9EuxYN1Dnzq
 3XFBngW+LhZupOEBqpXYdIK3L/dK9NCjJSn7NNOsMveE4Q24oLKDFFH3ANXy8lvpJSr2
 VPeUZtL7kPMaDVr0dmJgui4y4Z1LaTne833/5bO++/wbzYZxkw+7Zq/rJLMrBeYcwnPb
 t6oczOltzoCeWvFi0/r8hArWJaI7fJbcwWhouu5NxwAROs61DHFF/mvD1voWB3tNuXb2
 C0FA==
X-Gm-Message-State: ANhLgQ3uT4IOrBxFUE4ctAQmsfWt5d2myQlIs7RXlOIkZOYDcbcicgvP
 gPEmu4b3Qe7cWrSCn3GwAA==
X-Google-Smtp-Source: ADFU+vsJ21NZsBEEqm7Lb7K1Azezc2Df6E2CAGi6OWzLR6nfUVM5t4Rj0udq+sSnbbVAaPxyxLYSJA==
X-Received: by 2002:a92:b68d:: with SMTP id m13mr18155314ill.152.1585684957653; 
 Tue, 31 Mar 2020 13:02:37 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id o23sm6237099ild.33.2020.03.31.13.02.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Mar 2020 13:02:37 -0700 (PDT)
Received: (nullmailer pid 8303 invoked by uid 1000);
 Tue, 31 Mar 2020 20:02:36 -0000
Date: Tue, 31 Mar 2020 14:02:36 -0600
From: Rob Herring <robh@kernel.org>
To: Adam Ford <aford173@gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: vendor-prefixes: Add Beacon vendor prefix
Message-ID: <20200331200236.GA8247@bogus>
References: <20200324144324.21178-1-aford173@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200324144324.21178-1-aford173@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_130238_569598_AF55A7B8 
X-CRM114-Status: UNSURE (   7.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.180 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Adam Ford <aford173@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, aford@beaconembedded.com,
 linux-kernel@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 24 Mar 2020 09:43:22 -0500, Adam Ford wrote:
> Beacon EmebeddedWorks is the brand owned by Compass Electronics Group,
> LLC based out of the United States.
> https://beaconembedded.com/
> 
> Signed-off-by: Adam Ford <aford173@gmail.com>
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
