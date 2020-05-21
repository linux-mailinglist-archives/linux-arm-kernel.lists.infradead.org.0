Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C7261DCED2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 16:00:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LD7x1IPNLTVSVWg6Qc4g5Vo0TRNPtWfMM3GP3FP1vcA=; b=i4m1tA8W1ZOjH0
	tzDm3jdeksMi4aW0Hxlfy6AWxzR1vPEtT2atkuNZ5GySRfWZp+q1vSdXKfZjT2L6KoKjUYuZF6HX1
	W7hlA24uCOVTdPfis/2e80GaTR8TgCTQLxdN4VmPn/FXCfyRaf07Bp71B+Dp8zqa2CXOCl+CtdUeI
	qBso1O40E/s6dxrlw8sSmn7hUq8uNoowI+UuIj7RvDx8Z9wn+1ZibzHxYirohPkHXR5T4YZxgq1r8
	irdw0J+pXHEEw6xIz8sUPmYEadSBXAlcgn5lqsh4xl4Jh3l+twzgz04lOwjFXMhlz4QtrqyEgEBjs
	9F1MUwqJZULTAYwKXLoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbljp-0004wR-If; Thu, 21 May 2020 13:59:57 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jblja-0004v3-8s
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 13:59:43 +0000
Received: by mail-wr1-x441.google.com with SMTP id e1so6763407wrt.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 May 2020 06:59:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=fd27zalAyz5wmnk1UFuL/3CVJVB2Mbru00pqm3YvwKU=;
 b=TZEsQQmRmAtlsPZ6hEPx1lfN+WVfX9faQiHdd1FC5rdGKNoEokI5y6RqM2R5AunejI
 u538EoIRYq37DBlxBdB5BCNFnYNB9Adj3e0xFr5JZI02zmw4mzuluXYm9cnjbvpKyKgs
 AgA/U/12lSi6ar8khG8bQKCe9ydhwDp5gYliM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=fd27zalAyz5wmnk1UFuL/3CVJVB2Mbru00pqm3YvwKU=;
 b=kCltfItWlsnL+Y/Z7sAZKFIIzpmbMvdCR5hI7CbGCNt6Rk4Ey9cJch5NIHFObq9L+5
 /CDoz/xQZqKoAkRNaoDDNhZrEUHkPnFxzdlqOHPOD2ECo4/KRzuK4bQI8wnWTVjUMfiY
 DIvNFGbVTBpvdLupyGOjNK+FbBltXaDoFVB7kJNNBdMD6I52FMTk3yEmN53pzvh6yFFp
 /45LcM196xm1nVHnJrVzaP81I6samop59NzXkPTltU4mxTp1RgLg+SYkeRbHcxLyj6RO
 cpHEGgBKaZS4KTyXcNh4VeDcA3KNlD9RKKkFPypNMkD84skcGQ5i2XBrYPNTh+sDN75W
 01/g==
X-Gm-Message-State: AOAM531h96d8kYUBQLc64Hy2e/OKJ4EgGPLBFhJJTTscuj8b5duWClge
 zBphbfxJEkCrTHHiynpnADoliQ==
X-Google-Smtp-Source: ABdhPJzYH1Ehd7L4WwVhzu2u//nGcgv2AbmGEgmxLvE9GqtTmu1vDDGQKL8r/UbPrLf9oXWCdRfLAA==
X-Received: by 2002:a5d:68cb:: with SMTP id p11mr8426488wrw.349.1590069580276; 
 Thu, 21 May 2020 06:59:40 -0700 (PDT)
Received: from chromium.org (205.215.190.35.bc.googleusercontent.com.
 [35.190.215.205])
 by smtp.gmail.com with ESMTPSA id c17sm6505348wrn.59.2020.05.21.06.59.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 May 2020 06:59:39 -0700 (PDT)
Date: Thu, 21 May 2020 13:59:37 +0000
From: Tomasz Figa <tfiga@chromium.org>
To: Xia Jiang <xia.jiang@mediatek.com>
Subject: Re: [PATCH v8 04/14] media: platform: Change the fixed device node
 number to unfixed value
Message-ID: <20200521135937.GD209565@chromium.org>
References: <20200403094033.8288-1-xia.jiang@mediatek.com>
 <20200403094033.8288-5-xia.jiang@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200403094033.8288-5-xia.jiang@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_065942_338422_AEE22179 
X-CRM114-Status: UNSURE (   9.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: drinkcat@chromium.org, devicetree@vger.kernel.org, mojahsu@chromium.org,
 srv_heupstream@mediatek.com, Rick Chang <rick.chang@mediatek.com>,
 senozhatsky@chromium.org, linux-kernel@vger.kernel.org,
 maoguang.meng@mediatek.com, Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 sj.huang@mediatek.com, Rob Herring <robh+dt@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, linux-mediatek@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Xia,

On Fri, Apr 03, 2020 at 05:40:23PM +0800, Xia Jiang wrote:
> Change device node number from 3 to -1 because that the driver will
> also support jpeg encoder.
> 

Thanks for the patch. The change is correct, but I think the commit
message doesn't really explain the real reason for it. Perhaps something
like

"The driver can be instantiated multiple times, e.g. for a decoder and
an encoder. Moreover, other drivers could coexist on the same system.
This makes the static video node number assignment pointless, so switch
to automatic assignment instead."

WDYT?

Best regards,
Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
