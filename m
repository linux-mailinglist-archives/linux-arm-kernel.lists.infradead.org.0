Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CD311E5432
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 04:48:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I0CI9Fr5E3AE+nUxSKPcZ4u52b04EgHOtvXlHGtj448=; b=ozAeqorj8CXyPc
	QnXmre+AeBPwyiILkdQFR63jclxwoTnK4A1+h/v2n0MnHaKmLuyC8m3SzcpmH7asUGLUAAMzPEXyT
	MFOeCffy7jViwq7siVvRAT+LvS9arGDDx6rSV27R+yDdW7kLw1BiFc8c9sgIQn7bNF/RQiys9+OF9
	o47ZHk3ksb1xkOd3UiAhG3uBj3CglMVwW0bcgj3vOosKVvzA/sOLps3iPBmGIB5W3fuAxq0t1y7yC
	6cwI/rD2kEXcjC0SvneLDknMiaU0pWzpJ5yMR29YAxh7xITthZFOkYdt9nH1P2tl9dLuDDEpDjHSX
	mrl5L4HVRtS3zEQ2DlJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je8aM-0006wR-H1; Thu, 28 May 2020 02:47:58 +0000
Received: from mail-io1-f66.google.com ([209.85.166.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je8a3-0006v3-2J
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 02:47:40 +0000
Received: by mail-io1-f66.google.com with SMTP id d5so18889617ios.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 19:47:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=HErFQ3RihllwszLmK+bWoBbNtup3wq0O9RJIVYu56bk=;
 b=NyTDJMG+O7Ilb9PH3Nc3FtIXj1S7K7Bc+vzEQMZ3sez3m/5vQULGNzw2u8c4iee7S3
 CKYrvNXXDvKYAGskPbkBY3QL/ITVjoEh7oFWHjjPbhuxeeUhhZ/ld7fMQnlfSZZSzfdb
 hf0yxds8eifi55Km1knaPw2Dq5mh0BFch5NGlyeGG8wm1fo2ozsjoO9i8pYa0F14OSgA
 Bw1Mi4E/6iw6aWW2uZSQx45vP9LuHWWyXiY0rVXM3h3d+86Mib1KL+uhDqk2ZRHYWsn8
 QmMQhVrcuHBuAxBXrKmv8r/WWH8L7I4JO55pg79Q4rG/Qp1nJHCVBnRr/92Lu+mz2ggp
 pFuQ==
X-Gm-Message-State: AOAM53046RRo2uPRVoAmyaXh5Czqe7HFyPs2lm5r6qJKTx+ypu/Hbqo4
 ydPf5+uugTusEezOeGoKaQ==
X-Google-Smtp-Source: ABdhPJx4bm9u6LggKI+6fECbJDz/YJWEON9xWm3kqPJIGl0Su7EEcGhPGAvdlhTNnzMeVYeiVrJZ/w==
X-Received: by 2002:a02:cc56:: with SMTP id i22mr805809jaq.31.1590634058471;
 Wed, 27 May 2020 19:47:38 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id f15sm2537695ill.58.2020.05.27.19.47.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 May 2020 19:47:37 -0700 (PDT)
Received: (nullmailer pid 3268998 invoked by uid 1000);
 Thu, 28 May 2020 02:47:37 -0000
Date: Wed, 27 May 2020 20:47:37 -0600
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH 1/2] dt-bindings: pwm: Convert imx pwm to json-schema
Message-ID: <20200528024737.GA3268948@bogus>
References: <1589439259-28510-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1589439259-28510-1-git-send-email-Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_194739_106428_47F0F004 
X-CRM114-Status: UNSURE (   9.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.66 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.66 listed in wl.mailspike.net]
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
Cc: linux-pwm@vger.kernel.org, kernel@pengutronix.de,
 devicetree@vger.kernel.org, festevam@gmail.com, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, thierry.reding@gmail.com,
 Linux-imx@nxp.com, p.zabel@pengutronix.de, u.kleine-koenig@pengutronix.de,
 shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 14 May 2020 14:54:18 +0800, Anson Huang wrote:
> Convert the imx pwm binding to DT schema format using json-schema.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  Documentation/devicetree/bindings/pwm/imx-pwm.txt  | 27 ---------
>  Documentation/devicetree/bindings/pwm/imx-pwm.yaml | 66 ++++++++++++++++++++++
>  2 files changed, 66 insertions(+), 27 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/pwm/imx-pwm.txt
>  create mode 100644 Documentation/devicetree/bindings/pwm/imx-pwm.yaml
> 

Applied, thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
