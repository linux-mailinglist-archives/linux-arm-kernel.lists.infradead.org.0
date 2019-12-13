Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF96C11EB04
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 20:11:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tbCUwDmdgJdTLtsfWiB0zbtORoQRmBsJrsSguCm51r8=; b=B9kPymjjOXYoxM
	ZBmzfGw9kTgYPdHvEc+btAc7sVz8uKjpoheUvVhij63CGK/LikJi2CQB9rsUeMWvYeD2uLLz5TkI5
	Ks+bBIGFcDGZD0bjJHEtKuYrkDkhf9HD75Sazt/OVVU2ItMGndRwwlaV56Xrn8xszTBN8Fe0TTwGp
	DoMSb4N9SH0jQ5HPrRasF8wc4AdH8dkcShACTPsF83haVX3S9DiMfh4nitvmOiBdd+IoGndppMyTB
	450A2FJqvIm0FgzXwXrF2lIzkj7HqqbOABTnL8OK270KMYb86rn3EhCJh+ro7b8XzS9/1F7BE4utt
	5e2FSaoNdy7Z2FF7PvBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifqL4-0004GO-0I; Fri, 13 Dec 2019 19:10:58 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifqKs-0004Fn-6R; Fri, 13 Dec 2019 19:10:47 +0000
Received: by mail-ot1-f68.google.com with SMTP id h20so324982otn.5;
 Fri, 13 Dec 2019 11:10:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=qHsUIESi47GUujK3ymDIbUW6G62I8FASealFyFb2qxM=;
 b=q+qEpUGcYL4Ok1EaXdNTVYHa8popEyOmJP8hCMTVQneB2EWM5FQufY5kuy2ZRnpSaC
 UkBlNtZfEk01D1zg0OP/LByQPoIXPeLbAJAUr5KaRMxrLWki7jXVaCqy9HgChdeC6LiQ
 ErAo8vBeKkZUbV9wHBrS9vsTwqLXwfBRN2Xnqs26tIUhZ3LSps4+vQ6mKJRzcvd/AGSC
 zPQw8Vn5TJK0g9+fbr04jmbNYmYQlbUrTkVt1Rkh7Ssw08pO7B77UyvpYmbRQ/6Q23rQ
 XnE3B/B7gTGFEbWVCBZsGeYftSBeo1DtpaMRWZQQUUchtJYSpupbVJLab2cjGB0eY8GZ
 9mbg==
X-Gm-Message-State: APjAAAVLglFTKO3AbJRmgi4kvQ2PwJAof0vUqHvYMnYJJeh1H+GC4hLw
 gCgzxS9lIofmB21/iIBtmQ==
X-Google-Smtp-Source: APXvYqzHxWniZ5J9xfopYjECrU07WUzV4L9U6fU6FRGgt1nEiyBXlgj3TRlcGj+V/4Fj0x84/KDZiQ==
X-Received: by 2002:a9d:53cb:: with SMTP id i11mr16760478oth.158.1576264244638; 
 Fri, 13 Dec 2019 11:10:44 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id b3sm3550697oie.25.2019.12.13.11.10.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Dec 2019 11:10:44 -0800 (PST)
Date: Fri, 13 Dec 2019 13:10:43 -0600
From: Rob Herring <robh@kernel.org>
To: Ming-Fan Chen <ming-fan.chen@mediatek.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: mediatek: Add binding for MT6779 SMI
Message-ID: <20191213191043.GB28558@bogus>
References: <1575872371-671-1-git-send-email-ming-fan.chen@mediatek.com>
 <1575872371-671-3-git-send-email-ming-fan.chen@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1575872371-671-3-git-send-email-ming-fan.chen@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_111046_239122_6E07301D 
X-CRM114-Status: GOOD (  10.71  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: devicetree@vger.kernel.org, Joerg Roedel <jroedel@suse.de>,
 wsd_upstream@mediatek.com, linux-kernel@vger.kernel.org,
 Evan Green <evgreen@chromium.org>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Ming-Fan Chen <ming-fan.chen@mediatek.com>, Yong Wu <yong.wu@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 9 Dec 2019 14:19:30 +0800, Ming-Fan Chen wrote:
> This patch add description for MT6779 SMI.
> 
> Signed-off-by: Ming-Fan Chen <ming-fan.chen@mediatek.com>
> ---
>  .../memory-controllers/mediatek,smi-common.txt     |    5 +++--
>  .../memory-controllers/mediatek,smi-larb.txt       |    3 ++-
>  2 files changed, 5 insertions(+), 3 deletions(-)
> 

Please add Acked-by/Reviewed-by tags when posting new versions. However,
there's no need to repost patches *only* to add the tags. The upstream
maintainer will do that for acks received on the version they apply.

If a tag was not added on purpose, please state why and what changed.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
