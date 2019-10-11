Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B16B1D45D8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 18:54:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=llFCtYUavLDothJmR1Pzvy4nUqy60uJUoyv5ggDOomg=; b=oVZzCiyNcAjprM
	oIrnkp2GqK4w20Q0NH5wlLxhNDwDXG5AvQSpBRP2KoANKL52BwMKcG8cqYiyOTN2J5a7dyN2c8yBc
	QNFrloXx5hp3/6TCJZv10KibqiJyiyMyOnA+gBwrFumCRgyJGpS02xX0EaCVaxueOhNnGi2kAFmOx
	U/y3XsXSoTxr7CLXbQEXPeL3Jyt2URUGEeqVaxSFInbjYs4zfu9TCV83k3Wf4fktL8xT4PjyTF05F
	RzP/LylpP0xFsOLOqEzg82KPcYDfSobgajdDnJKnHz4PG90Umtef1ile5MK8hPWyt6XoU5+iXrf9u
	7zmndjau2n63LTu3Oqxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIyAx-0007sr-H5; Fri, 11 Oct 2019 16:53:59 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIyAo-0007sI-CZ
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 16:53:51 +0000
Received: by mail-oi1-f195.google.com with SMTP id k9so8568584oib.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 11 Oct 2019 09:53:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=+XKxoI9VpM0Y86gFJFH44QIdHz4jpQag2jQU1HryGoI=;
 b=ujdyi3QZGN9vxapD1homWMkTHnIjZhTRD+swUUJKhwVKyqL5EpZbC2uyKimbd/T3a+
 ZVkCiTTiSqP0ICTcC8dV0aNsDMKtlwCPYrZ/ZAwBsN7brn3Rp3B0RT3QZbVUpyzALu0h
 4Yv1XITQq8uZpHatyozi24kfQoqeMrZ9qXFhOBBFP7nN1tN+uhL6Ngfbc80Nqazg5MV6
 y2/yhQgsvKvCELGKAgWqmzRIHxGZtCl8F5OCWbL20VGyVAFOcpDDtCEszWdHetmAFd5I
 9b75/0mZZGjlh7A2DORqOGQ3B+9OfPLWpwhuqvHasVsubn0bgDRUiJzRaczHSSN6UBQQ
 /0yA==
X-Gm-Message-State: APjAAAWE8j/u0PGIYYfyuMqR2BfFK1DZo9OEPddMeOpwU6sxbcIoXi6S
 CteyddQQjrdTe58L+k7ANQ==
X-Google-Smtp-Source: APXvYqyYET1+fTjJYIyVH/pXbQ1FdDUKmjrg95oxGL5k6oWwgKL6dHqyCHb3/OZD4qwDDFHOQLnKwg==
X-Received: by 2002:aca:490f:: with SMTP id w15mr13254293oia.159.1570812829223; 
 Fri, 11 Oct 2019 09:53:49 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 17sm2673691oiz.3.2019.10.11.09.53.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Oct 2019 09:53:48 -0700 (PDT)
Date: Fri, 11 Oct 2019 11:53:47 -0500
From: Rob Herring <robh@kernel.org>
To: Jolly Shah <jolly.shah@xilinx.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: firmware: Add bindings for Versal
 firmware
Message-ID: <20191011165347.GA4114@bogus>
References: <1570474343-21524-1-git-send-email-jolly.shah@xilinx.com>
 <1570474343-21524-2-git-send-email-jolly.shah@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1570474343-21524-2-git-send-email-jolly.shah@xilinx.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_095350_426584_A975438E 
X-CRM114-Status: UNSURE (   8.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, keescook@chromium.org,
 ard.biesheuvel@linaro.org, matt@codeblueprint.co.uk,
 gregkh@linuxfoundation.org, dmitry.torokhov@gmail.com, michal.simek@xilinx.com,
 linux-kernel@vger.kernel.org, rajanv@xilinx.com, robh+dt@kernel.org,
 sudeep.holla@arm.com, Jolly Shah <jolly.shah@xilinx.com>, mingo@kernel.org,
 linux-arm-kernel@lists.infradead.org, hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon,  7 Oct 2019 11:52:22 -0700, Jolly Shah wrote:
> ZynqMP firmware driver can be used for versal also.
> Add versal compatible string to zynqmp firmware driver
> doc.
> 
> Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
> ---
>  .../bindings/firmware/xilinx/xlnx,zynqmp-firmware.txt    | 16 +++++++++++++++-
>  1 file changed, 15 insertions(+), 1 deletion(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
