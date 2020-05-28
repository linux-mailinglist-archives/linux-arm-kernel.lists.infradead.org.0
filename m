Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F3851E6E5E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 00:06:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VA6QAwESOX7DeUFB6eM95xanqqkez7gRfv/EEHKrgzQ=; b=bmMhBDBUssd4Bp
	l7MyggUjayOMxBLc24QiMuB3zvxs1Ap0vaRNmUDgmAJ44dGQKVe/B1X6RarvlJe/f3AH/falkUelI
	1jExqQ9Ux5FiRsq98LmQtffiW4Y5RZWnQmnzSZyDQK/lgeon5AeeH0dgBVgvV1+IENb2VSJPdjMCm
	ouPUvdq5STh5Bu80buRB7WBDPua3ud8KhQWtH+qb6RhmhmmKgKFbPVmnTrCQO0FsFQiccy1asr727
	K7G4hzqM/88hHybzfhSxLdaGVoVG8CGUwnAGuHcmwPscQD1Bv7Soo5HE+eOqvBnAqVYnRKDB8juS5
	90R7cLNu3MOOmaMt0FFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeQf8-0003x7-OD; Thu, 28 May 2020 22:06:06 +0000
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeQev-0003wk-HN
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 22:05:54 +0000
Received: by mail-io1-f68.google.com with SMTP id k18so229453ion.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 15:05:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=JCx+B8/wy3Lm5+1erx0AXzwlVtooOFiW3OXY1z5WrVI=;
 b=FOJ26bz6M9Ta7aFA6kgrUM++ch/YAOt75gFOZLMzBRhcE5sE6sxL4/8Cwf3Q8jMQfz
 E5j4hfSqrk5rEKy5LW+LHBaQvXxIVm0A6IOZKg9X3F4qN1GqVQI+9J33bHlOnVGQqYw2
 YKZVz538LPCfjAfxX7G1Clu6iPeenLd3TIq3eELeOBBfgfHIT9gGK4WKiCXcYqVpoRFu
 k6+pkwhyF9DkiHr+c7Pe/RyV5XXqzhHwJ9x5pYk44zpMWjCowbpeTPfjM3UPZRy4rSZ6
 uI9iTF+S/8uoUzQEGi5YHAcJPp8uaL8Jq2YdM4Z9z6CcCLi9vXZWXaJdl/sSxfI1k6Xl
 9iWg==
X-Gm-Message-State: AOAM531O+ZEAxxXuaX9ValEvsvmfCfyoOnbiJn3oT+nl/vWh4+RgfBQI
 SH1lzB8+K+hLinUXyjl6sA==
X-Google-Smtp-Source: ABdhPJymRsKL3lqmN13SyW5hyaIflvljxb+U0UEli++/rLp1hKpM3QJkg33Adjy7OEh4BconDlGkxA==
X-Received: by 2002:a02:3002:: with SMTP id q2mr4432217jaq.19.1590703548599;
 Thu, 28 May 2020 15:05:48 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id n8sm3030119ioo.2.2020.05.28.15.05.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 May 2020 15:05:47 -0700 (PDT)
Received: (nullmailer pid 765873 invoked by uid 1000);
 Thu, 28 May 2020 22:05:46 -0000
Date: Thu, 28 May 2020 16:05:46 -0600
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V4] dt-bindings: thermal: Convert i.MX to json-schema
Message-ID: <20200528220546.GA765825@bogus>
References: <1589967737-1128-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1589967737-1128-1-git-send-email-Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_150553_570636_BF15F3C9 
X-CRM114-Status: UNSURE (   9.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.68 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.68 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, amit.kucheria@verdurent.com,
 linux-pm@vger.kernel.org, festevam@gmail.com, s.hauer@pengutronix.de,
 daniel.lezcano@linaro.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 Linux-imx@nxp.com, kernel@pengutronix.de, rui.zhang@intel.com,
 shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 20 May 2020 17:42:17 +0800, Anson Huang wrote:
> Convert the i.MX thermal binding to DT schema format using json-schema
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
> ---
> Changes since V3:
> 	- improve "fsl,tempmon" description.
> ---
>  .../devicetree/bindings/thermal/imx-thermal.txt    |  61 ------------
>  .../devicetree/bindings/thermal/imx-thermal.yaml   | 102 +++++++++++++++++++++
>  2 files changed, 102 insertions(+), 61 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/thermal/imx-thermal.txt
>  create mode 100644 Documentation/devicetree/bindings/thermal/imx-thermal.yaml
> 

Applied, thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
