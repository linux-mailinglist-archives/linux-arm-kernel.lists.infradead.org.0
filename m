Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D2D119883D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 01:26:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=04PnOG52PRAeiM2jQ9+Ownw/ci5O4V5DZR7SRWENGz8=; b=i+tR5kszRuer4k
	4A4v3XIASB045cmU9868UFqC9AHn2vYIF8iZca7HlmSYVoGkW5De8vD1FNpVijry+ebk9PeXppDHm
	q8Qb2SOvTjlLLZIVMkYQcFHg0sLwWEEVarvm8HRCE6CpaqDxWSqiWOSfmf4qQVQYcNm9tgQ+4gaJa
	0PIaxT6ToZQk9BxksDysi3NIjCxhDDd9n7qYouJmkjgtJ9k0A1nYQrzWrTcudFh3JnJ5HL09byKaC
	OA96XHDmJcDA59AF0qiO7Ncd+ut9QRE7PnazBAHz0JeZXuPXj9g+qZnZrW4f7CfttpYMoNE3V1OAY
	RMpvc9bONPTVxpCPm1Gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJ3nO-00065C-Un; Mon, 30 Mar 2020 23:26:18 +0000
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ3nF-00064u-Gj
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 23:26:11 +0000
Received: by mail-io1-f65.google.com with SMTP id x9so13317663iom.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Mar 2020 16:26:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Y63T0wbyLEmYwE9gAEI8Zr/6EzaOspBnb441laqbZEg=;
 b=HE0ishFfQ+2FRYk9/QELEPkMXqxzr8ZIHxH3Kn79Iq5rsCDSrXYtXI0aSQ2sWeb2+0
 cqPNkM1MsjxLUVRwTCafIew80mwddner+ubfz20PE+rzfLzhqXtenmB//Ep8AebnKWg1
 tPCLMvZDOYoUKm2XFD/DIdA50DCFAu/k2hwD6EEmTkJZ/OwM0B8mP9XcxaY0OGgtk1x8
 Y0cJIl6FtTKNoNwMsILyX3N+R42G33bFcIGjx8thHULGwEMSKf+viypP6Ny3yNAaqtb9
 V9uvDW67U0QkSVqFfNnn5t8A/Fld8ykha+lOs5TQqaG5uhtade3huf6w2eMsUBd/Tga2
 NSQA==
X-Gm-Message-State: ANhLgQ35T/78ShCDu4vt+kybWUjQg/8vZb+A3Sagu6AoZzSgk58nVvn2
 f8iewHYfBWSTsQvNzjIdNw==
X-Google-Smtp-Source: ADFU+vsym9bSX5N8kLEnjs2h8aexWHp7cTlvBkEIiGLT5gJ0zfPAzGevnq6xwHKXhFL2KDACD/7Tbg==
X-Received: by 2002:a02:3842:: with SMTP id v2mr13498145jae.9.1585610768816;
 Mon, 30 Mar 2020 16:26:08 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id y6sm5293221ilc.41.2020.03.30.16.26.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Mar 2020 16:26:08 -0700 (PDT)
Received: (nullmailer pid 24877 invoked by uid 1000);
 Mon, 30 Mar 2020 23:26:07 -0000
Date: Mon, 30 Mar 2020 17:26:07 -0600
From: Rob Herring <robh@kernel.org>
To: Pascal Roeleven <dev@pascalroeleven.nl>
Subject: Re: [PATCH v2 3/5] dt-bindings: vendor-prefixes: Add Topwise
Message-ID: <20200330232607.GA24820@bogus>
References: <20200320112205.7100-1-dev@pascalroeleven.nl>
 <20200320112205.7100-4-dev@pascalroeleven.nl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200320112205.7100-4-dev@pascalroeleven.nl>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_162609_554657_F319C616 
X-CRM114-Status: UNSURE (   9.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.65 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-sunxi@googlegroups.com,
 linux-arm-kernel@lists.infradead.org, Pascal Roeleven <dev@pascalroeleven.nl>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 20 Mar 2020 12:21:34 +0100, Pascal Roeleven wrote:
> Topwise Communication Co,. Ltd. is a company based in Shenzhen. They
> manufacture all kind of products but seem to be focusing on POS nowadays.
> 
> Signed-off-by: Pascal Roeleven <dev@pascalroeleven.nl>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
