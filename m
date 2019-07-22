Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFE9870D9B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 01:49:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jb11rHAWyDX88JMRQq+IBD6AVoDk30VH/joO5yEZunI=; b=JZDb129zPuCzpz
	QkZtRrJzBRlivpD5p3RB3lUcz50cH05J3NHbRoYgR7jJOHqi6PeNZxsiqyVPTYNK1Vxb52hva8eJE
	Aef0iHPy2XHMcku+ph7K0VeH22cduYUUGgtdV759/rPCzWszKYxDC6PRLUXoAatXBmmv6aTKiRBtU
	C/hRHPNiq20berl9nY1t3PPlmuUNezGI/xs8WWj9c7yzLRA4aKSsJ9dPU/96EWkLP93P9EB9T6Kgb
	J8k38S63iBQcNqIpPfggx63Bd6V2hY709wlIJsFjY9BpsxQL8WMyZ3Y48suipNih0IScrIkfDUHzi
	JOX1tojK7MjeHs4JAc7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpi3I-0004Sc-86; Mon, 22 Jul 2019 23:49:08 +0000
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpi2O-0004RV-UX
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 23:48:14 +0000
Received: by mail-io1-f65.google.com with SMTP id j5so73737090ioj.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 16:48:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Z5dGHdXeC8C6M1Pe5s8pfnDnKQmDihjKHC9kjuo+Il4=;
 b=JgH/ArsksFGuZH36Uu7pzAckH8YqCDccmu9Lhai3L8z62W6Ep3ZSIgAXe4mTCfGA0T
 QcOqcqRv27JAn5XVMseJ3KuX5u+lt7OgCsKYbuQoUYyIwLk9PvdsA9e4f7uDvM6TNa58
 23mSpkVfpxpTKYcHjkpNRrWs6slLsKfSzgLDvSUuS5lFQzW0HcfgIHeei7kvHPfzeSGL
 LhccJ9RgVxfZLL+FMlTt0t7/P2zRLzfmsHwr639oV9DvMIfEadT0E7JB19DWs4EOHyW3
 52WbXI4nd17tg5hPhEHw1RlZOwHaNOgnhB1UxPzdfzvdcjgSXuJHozsjqhj+++cYPtPi
 WT/w==
X-Gm-Message-State: APjAAAUnbxXIbjpmilhb2g4Dx+cwiDQYf2HOKcZO62J7Q9deNqSoGoRB
 tT8taTYH+1BxxBamcYsZeqE/G4c=
X-Google-Smtp-Source: APXvYqw4b2UbLlSXGAhGzcm+i9ZSSI5DoDGtdkU/i/35wi+A6iRGqdOoCN9TZMz4vEDsJGzUqNOo0w==
X-Received: by 2002:a02:bb08:: with SMTP id y8mr31151132jan.51.1563839291717; 
 Mon, 22 Jul 2019 16:48:11 -0700 (PDT)
Received: from localhost ([64.188.179.254])
 by smtp.gmail.com with ESMTPSA id j25sm53735053ioj.67.2019.07.22.16.48.10
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 22 Jul 2019 16:48:11 -0700 (PDT)
Date: Mon, 22 Jul 2019 17:48:10 -0600
From: Rob Herring <robh@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: Re: [PATCH 1/3] dt-bindings: media: i2c: Add IMX290 CMOS sensor
 binding
Message-ID: <20190722234810.GA22419@bogus>
References: <20190703190230.12392-1-manivannan.sadhasivam@linaro.org>
 <20190703190230.12392-2-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190703190230.12392-2-manivannan.sadhasivam@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_164812_987188_3EFDDFF0 
X-CRM114-Status: UNSURE (   8.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
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
Cc: devicetree@vger.kernel.org, c.barrett@framos.com,
 linux-kernel@vger.kernel.org, a.brela@framos.com, robh+dt@kernel.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu,  4 Jul 2019 00:32:28 +0530, Manivannan Sadhasivam wrote:
> Add devicetree binding for IMX290 CMOS image sensor.
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>  .../devicetree/bindings/media/i2c/imx290.txt  | 51 +++++++++++++++++++
>  1 file changed, 51 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/i2c/imx290.txt
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
