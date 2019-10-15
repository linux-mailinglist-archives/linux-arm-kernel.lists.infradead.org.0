Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D88AD840D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 00:49:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JQ7QYAj/Np4CZPhqO+PFgQOf06rTvMMKN7uA1lf57Rg=; b=DI7lTEvOJ22FR3
	LR3SG9AmIibBcCsf8SDqXydFXnap4SsJrlcuDU66gCY0SGSt5PxiB5LyDs3ycZoZUZld81xTWVNVR
	2ZqaZ1fuKBi94Wv021hhQE/qzm4ZekLYrWAhgDkYea4PRW8vZX+TH8YWhoKAw1fzbU2nmipRjbeU8
	qwX+HHHmT7cRnSjhRa7MX5ebn2HMO2bY8tPNnpmmvJh9nR/dd/+Op5ohQb4IUYURO2jRupN8zmYmt
	wTSb4VhUhu9OoeyPxd1fysruY+q4h+DXwGwZiPMD5tKaTFNGXR2fAeec4j9ShVZHgAxC9wPqjsSNq
	TCrvQ6B+JIgn2CtOz5Qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKVdT-0006je-LZ; Tue, 15 Oct 2019 22:49:47 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKVcK-0005yw-MP
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 22:48:38 +0000
Received: by mail-ot1-f67.google.com with SMTP id g13so18439905otp.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 15:48:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=VXXXgfaRs0fRYb5MfNDLzUAfZ9uiwu8dv9B5jD48jZE=;
 b=SBfjRm/vJ9tX2LrGmJfrXWj9wCii2mvO7PlXCMMBmSTLWFjxfnEuzCg3tHH8ZK9D1a
 TyZOSs9lmkKOTWMRx7CtQgL+V0xmiTWKFL+VMkh2tnILwuH+78ze1sWn8b8rIwdV3aUu
 IK3P64V08fM3UGUP0LKG/pz8QMV+k0voc1kM0+hKJYN6d2eNeJmzksvH/1uUS4qnc8QZ
 HEBxgdoKdVSrZ54X+Nn58XDAMRjwEJBGTLWEkEn7amJLdXc+JpTWtiSPfmDTptzR1kuf
 nX7dvEZlUiTbGwxb1TcrwxA+3Rer739HIbAzysq3MDwv7sfWOoxZrYvYbF+FExAyCcXd
 8ZQA==
X-Gm-Message-State: APjAAAVoW6WMLdPs7t/M2JLHZB4NbZdEyZd8rwKsRGBBEK9LpgwvHSFA
 JFrjmTwM/d5VW/8/w49KPA==
X-Google-Smtp-Source: APXvYqxgUj5HD8FnhJ04YByPQz/f5VlgGXVtmKJG3CQumR9dS3mjjn5FauT/umy7rGiEV7kXQ6hMcQ==
X-Received: by 2002:a9d:5f93:: with SMTP id g19mr2089596oti.260.1571179715119; 
 Tue, 15 Oct 2019 15:48:35 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id y18sm6788795oto.2.2019.10.15.15.48.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 15:48:34 -0700 (PDT)
Date: Tue, 15 Oct 2019 17:48:33 -0500
From: Rob Herring <robh@kernel.org>
To: Philipp Zabel <p.zabel@pengutronix.de>
Subject: Re: [PATCH 3/3] dt-bindings: arm: fsl: Add TQ TQMa6{S,Q,QP} on MBa6x
Message-ID: <20191015224833.GA15598@bogus>
References: <20191011143651.6424-1-p.zabel@pengutronix.de>
 <20191011143651.6424-3-p.zabel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191011143651.6424-3-p.zabel@pengutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_154836_772041_83D7647F 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 Shawn Guo <shawnguo@kernel.org>, kernel@pengutronix.de,
 Markus Niebel <Markus.Niebel@tq-group.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 11 Oct 2019 16:36:51 +0200, Philipp Zabel wrote:
> Add binding documentation for the TQ MBa6x mainboard with TQMa6S,
> TQMa6Q, or TQMa6QP SoM.
> 
> Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
