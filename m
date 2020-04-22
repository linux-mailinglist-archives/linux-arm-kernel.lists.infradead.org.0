Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B18FF1B4D90
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 21:43:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kZ6zVRo07h8jpw265WOfMb6lSeWB2EU46djOqwYD7Dg=; b=P2Y/Xt+3QvRN2k
	GHI0bx0s+jWpbCr2WyKUeUjYoXchhrCJFUkftvoTXtQoSoZb+QxMUjsSgxIaq4s3ImzDA4jVWYAHl
	NR/YxtAzjOrgrlYJRGtIwb2s11UDPzAqqAOqx3Ur0svxx5nXG+RrQpe8cDZ/In27hKkIhy2S47zk4
	QiIvevqCWQX21agqqIoS22S5f0O8CF5/lU48Jfgcq8mcR2N5FrzuMc6dHglRnMXRGeWsIoO/C24ap
	kPSV2Ztqd9ijABUbLKuNJlas0I7Cn0Tq1YBv+bLJ42U7cWEGr0NRJaObxXFNMGLNOslJSS2xInN+K
	D/h99oqR8UzwgpUdz8KQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRLH1-0000R4-7R; Wed, 22 Apr 2020 19:43:07 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRLGl-0000Kr-6A
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 19:42:52 +0000
Received: by mail-ot1-f66.google.com with SMTP id m13so3282658otf.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 Apr 2020 12:42:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=H+xYHNUN8NpwWICu1ZzL9vzjHv/h/QGUDSeS/fpG3ug=;
 b=b8THEjNWsjVPgFz/g/3Zq6HfpyPswix3/xhwPIS/odX4NzWvxEAKGT3ob7nbuFKG3S
 SGCC1DniIqcaum2L9uXn9+JO4te4ZZfjWlIP7+fcJ6zqGicPqQSruPxf4JmMPzoVbgKS
 6/qwtL3efHxxTW0/1twmwbOr2W64BL6sSt5CKQkzVXkY1OU76n10K1qcCF04anqepoDi
 fe9ndW2U6I1PKRAuU7x0nz/N1ni4uvH6MIXsIbu2LMlKCb8RMEpVd3/V0nSjL1DcB2gr
 GLY/DRwlb4QQykZUDuIBeAO1FsFpYyC69AvRWvN+lifpAlkzWdZLyUAqy3kUnFqQGm2p
 2Q3A==
X-Gm-Message-State: AGi0PuYsqdbGYyFitDSarA96VWhxMBkhj65PafNZGoee1LC9dXniIsFr
 vG+c1RKsja6doZGY1ED1KQ==
X-Google-Smtp-Source: APiQypIAC27fXYzhwwR1murVCsIEyDWyoJ33c1WBjH8aheZV10QcVH827SMvx4BBrBuyijKmXH6PSg==
X-Received: by 2002:a9d:23a3:: with SMTP id t32mr555321otb.333.1587584567424; 
 Wed, 22 Apr 2020 12:42:47 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id q142sm42070oic.44.2020.04.22.12.42.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Apr 2020 12:42:46 -0700 (PDT)
Received: (nullmailer pid 8669 invoked by uid 1000);
 Wed, 22 Apr 2020 19:42:45 -0000
Date: Wed, 22 Apr 2020 14:42:45 -0500
From: Rob Herring <robh@kernel.org>
To: Alistair Francis <alistair@alistair23.me>
Subject: Re: [PATCH v4 1/3] dt-bindings: net: bluetooth: Add
 rtl8723bs-bluetooth
Message-ID: <20200422194245.GA8411@bogus>
References: <20200422035333.1118351-1-alistair@alistair23.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200422035333.1118351-1-alistair@alistair23.me>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_124251_240244_348365E5 
X-CRM114-Status: UNSURE (   9.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, johan.hedberg@gmail.com, netdev@vger.kernel.org,
 marcel@holtmann.org, Alistair Francis <alistair@alistair23.me>,
 linux-kernel@vger.kernel.org, mripard@kernel.org,
 linux-bluetooth@vger.kernel.org, wens@csie.org, alistair23@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 21 Apr 2020 20:53:31 -0700, Alistair Francis wrote:
> From: Vasily Khoruzhick <anarsoul@gmail.com>
> 
> Add binding document for bluetooth part of RTL8723BS/RTL8723CS
> 
> Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
> Signed-off-by: Alistair Francis <alistair@alistair23.me>
> ---
>  .../bindings/net/realtek-bluetooth.yaml       | 54 +++++++++++++++++++
>  1 file changed, 54 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/net/realtek-bluetooth.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

Documentation/devicetree/bindings/net/realtek-bluetooth.yaml: $id: relative path/filename doesn't match actual path or filename
	expected: http://devicetree.org/schemas/net/realtek-bluetooth.yaml#

See https://patchwork.ozlabs.org/patch/1274671

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure dt-schema is up to date:

pip3 install git+https://github.com/devicetree-org/dt-schema.git@master --upgrade

Please check and re-submit.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
