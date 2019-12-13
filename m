Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73A6811EEA4
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Dec 2019 00:40:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6Pq76+ZGIS+b8VLSn95eQgDUob5sQ1jQ4Yik6jw6vO8=; b=T8imIJdtB/m8NJ
	Khu9RucIjf7MYNsIo1EFZkCW6pZATsN9efL/jACthO2NMVjoMrz6XuPnr1bpJYtMXaGPUEK1XEWV3
	enm8ddE895Y4Hk2CXCWyTGbrMp/TYbWtTYRlolcwgKj8AkFvIv0W+NISVfUNdJp5bmj5y2HMqSj0R
	FUaBDLUDxY0QoGACanTCgf0RdZOvZ0raj3lUSn9/0ifZdl02+p0O8krY/0/CD35NbK93EnfxVUvJx
	cPZZYxPwJHHo+UzxBSjAEQrD8WX6FtV6+B3SqLDrxSnMONAS7EQmlECpY+tDpXmDMz3o+9sUINug7
	aDtAsR/HPEDndKjimchg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifuXr-0007DH-4f; Fri, 13 Dec 2019 23:40:27 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifuXS-0006n7-4D
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 23:40:03 +0000
Received: by mail-ot1-f66.google.com with SMTP id r27so1051547otc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Dec 2019 15:40:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=FMz0fG5gHb4A8KfuLCFEZRIN+DFWIcz4co491YcnvaE=;
 b=HKlPKsf9Oe/hKKH61sIGEjvvDgdqX8gvMMSp+XPLhOR7DtF8wVgbbed8Cw7zylMAfr
 r9z2S8m2lbRvF41ZBZzSS3i2Hz43oDAT6tIZP7klCq48hmrp8hj6zTphy5KjUeEQkgb+
 OfnmhhFJL/t8OltNRFwR57zfmdCwTNQDK2MKQuiAGxQR2o3BlmlyUfrb9iPwrNVijA2G
 XgyNil/hq4O7dmcnI1fwDO/VuwGQzgksW0LkqHlkLuUo7CsgfC6vaBEtitLmfFjAj71X
 YX5nnP1RCN+r9kYO8uxUquEXKjfftE/1PfzT4Tcouei3GaWt1KYQB2Z8ah/0Cl0n74gF
 X7Lg==
X-Gm-Message-State: APjAAAXRfLKMz0/bUIv6nvXVVpz9HMRI7Pj56Ullnnyq9kDW37Zxhpst
 ZUybjzHgnFQXKo7VHt/0cA==
X-Google-Smtp-Source: APXvYqzNIlI8IKuEgpLyc52LDy7dNmu3ZdM+rQ4zQ3kkkBAw/tZl1kZS7+A7dvDJa6gcoXQDvrnqLg==
X-Received: by 2002:a9d:7e8a:: with SMTP id m10mr16535422otp.27.1576280401172; 
 Fri, 13 Dec 2019 15:40:01 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id m2sm3845047oim.13.2019.12.13.15.40.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Dec 2019 15:40:00 -0800 (PST)
Date: Fri, 13 Dec 2019 17:39:59 -0600
From: Rob Herring <robh@kernel.org>
To: Andreas Kemnade <andreas@kemnade.info>
Subject: Re: [PATCH 1/2] media: dt-bindings: media: fsl-pxp: add missing
 imx6sll
Message-ID: <20191213233959.GA8730@bogus>
References: <20191202204748.6718-1-andreas@kemnade.info>
 <20191202204748.6718-2-andreas@kemnade.info>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191202204748.6718-2-andreas@kemnade.info>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_154002_177427_0E085E8A 
X-CRM114-Status: GOOD (  10.68  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 letux-kernel@openphoenux.org, festevam@gmail.com, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, Andreas Kemnade <andreas@kemnade.info>,
 mchehab@kernel.org, shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon,  2 Dec 2019 21:47:47 +0100, Andreas Kemnade wrote:
> i.MX6SLL also has a pxp, so mention it among others in the bindings doc.
> 
> Signed-off-by: Andreas Kemnade <andreas@kemnade.info>
> ---
>  Documentation/devicetree/bindings/media/fsl-pxp.txt | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
