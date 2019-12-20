Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0855128535
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 23:48:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mcFCxCNBONdUwe57W3osO6pPKUVumkrlp8pEtaBBCXw=; b=ZjtbKc8oH4Am5Q
	hDs3jiefh1TQcmsdrCQ9RZE9mFp1kYbI10jL16LxGTaLxcYGeQ1O0eW6pcIukK258+1G5zr5Yyhzb
	50lB11imO3dIYxj00kbHA8cIYRfybdVfuncN1FacqG4sdqGDsQp3SxWg8B5zv2G4pfGV2CZBQC5sH
	egdG8/5tit2QW8TRLAOObs/QKPzJOxrG6fkN0HCTaJvN3L0RxfmPyrX9DUUpUTcWtNKMqSy2Xuy8Y
	5YCZJ7T94qb/t2JA71PLSlegdhyrEJ2Vh4ritp7x0c4Z/ev5ETiTcSl7sTmUfHhrBNys0ddxn2hES
	oZ6UQ9AM1MkORb1jHG9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiR4A-0002D3-LM; Fri, 20 Dec 2019 22:48:14 +0000
Received: from mail-il1-f196.google.com ([209.85.166.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiR40-0002CW-H8; Fri, 20 Dec 2019 22:48:05 +0000
Received: by mail-il1-f196.google.com with SMTP id v69so9265216ili.10;
 Fri, 20 Dec 2019 14:48:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=5ydh8/8SwQZQURpsj7H5OMlNH6BqWqcQ+ZSr278ZEo8=;
 b=NfCijt5f3ZcIPG7Fz7oWMAQCWsXvqfVqs/enQPc1rH9qwFaC1xu7Qhj+ekre35/sQ7
 pk7/Wdm3FCdnlzhgrjRVlTsixly0CyMQ0yNk7w3blzh2lS509fQNe7PREvMW0u6sHSei
 8OAtXPNKSYUE/EOQq2gD0iI/UgHduDvoz92oImnPPNG7v1HJ4wlRS+EEVryyUlboUbQg
 2Ah4R8KVj519OsnHVnJkqn/VfPcsqVkuZOMOYr8D+Y1AFf/5dSrp65AECEWY3lpKma12
 umLGfMMgkxrVuTFyPoUigpxkz18IyNCCVgrat3cqJ0AdG7AXS4RfI0IW9OPiGnAp6ncQ
 YvnA==
X-Gm-Message-State: APjAAAVW64kTUC2gMrUdveBiK3F0MIrPA4KmWw3DTyzLcjhuYcyFGtrN
 MqOUD85vxDwwzdPRBpZa5wtjIYo=
X-Google-Smtp-Source: APXvYqzy+s5mc7VlnG7SFlraOtuA08IEQUgo479SMw+kCniTuFHiYyY/N6k1UpCt0aeX1y2CIkVv9Q==
X-Received: by 2002:a92:af08:: with SMTP id n8mr14166376ili.217.1576882083423; 
 Fri, 20 Dec 2019 14:48:03 -0800 (PST)
Received: from localhost ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id j26sm3918819iok.3.2019.12.20.14.48.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Dec 2019 14:48:02 -0800 (PST)
Date: Fri, 20 Dec 2019 15:48:02 -0700
From: Rob Herring <robh@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@st.com>
Subject: Re: [PATCH] dt-bindings: usb: amlogic, meson-g12a-usb-ctrl: fix clock
 names
Message-ID: <20191220224802.GA26316@bogus>
References: <20191218142613.13683-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191218142613.13683-1-benjamin.gaignard@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_144804_570718_E22BA8BC 
X-CRM114-Status: UNSURE (   8.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.196 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
 Benjamin Gaignard <benjamin.gaignard@st.com>, gregkh@linuxfoundation.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 khilman@baylibre.com, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 18 Dec 2019 15:26:13 +0100, Benjamin Gaignard wrote:
> dwc2 bindings require clock-names to be "otg".
> Fix the example in amlogic,meson-g12a-usb-ctrl to follow this requirement.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> ---
>  Documentation/devicetree/bindings/usb/amlogic,meson-g12a-usb-ctrl.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
