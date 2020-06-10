Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B8A01F5D4A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 22:39:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/unWxGF1ByuPp15gonf0SX4eX+lCDpSdVMvtmNRaOiE=; b=dqmbkfmMG2XMLW
	8+y0TXqkD4ykN3FKsxbZAoREGSxnPJ+Ubu30ggvafw+N6LHpk72ig10XcJjcRQ33Sjgxn5cQes8tk
	4nQxkRdJfDbKoQ+CwUPaQtrc1olLzRup4h+j5zalA2ci6kIdJp1kzOB3APtgvDyIwr0afw/+5qqr8
	ldkMv0WScRUIndZhL1sq/VEb/FMHADyYPdVm/LabJJrv7ypYs/aqdPkpI+XGLnubOM3eDZ7mB25NK
	NbkvoPl7zlIUxwHT0aDMgH95eC772lJ+IS+WejiavO3loope9wIGzJR/nDtZ5pBup9y3dh2YJ74c4
	Dtp6Asogcohd7MYqyzfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj7V2-0003KD-RF; Wed, 10 Jun 2020 20:39:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj7Uv-0003Iz-M6
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 20:38:58 +0000
Received: from mail-oo1-f43.google.com (mail-oo1-f43.google.com
 [209.85.161.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4981220801
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 20:38:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591821537;
 bh=vVDBawfAIxR+XgFV9N0wVIVrEr9RkqoH4OUGfhUX4TE=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=obrMb8CFFtynYPduPZU5dw8GK0JLm4lbIpVKlhyxSMP3ZYf9FftY2ArfbXLa5M8HM
 ZQmMAtKKCVEcnbzT6GwUR5vtSc80RJjZIt7aWZm47gkROA+yI/H8IeNS4B2F/fzdyK
 BpLZ3iT/zOih+RgES70kk3kYmmDjFCoV6Q7B43sU=
Received: by mail-oo1-f43.google.com with SMTP id v26so781229oof.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 13:38:57 -0700 (PDT)
X-Gm-Message-State: AOAM533uKMUXa7GvQ9J4lqtNfF/Jp/B3r5EpEbs5a3pT2JLZs+Yhgtee
 897nZKAUTRdSbzah4DUNpOEjZD4HbUcTGKfkqw==
X-Google-Smtp-Source: ABdhPJx2fhOu4m4KNgYLDqdqhDoSmIrYDD7miA7JHI17HFjaaea3za14GBOk8BLETs0s+5g2YjldV90dmMWdq6ZaZzg=
X-Received: by 2002:a4a:6156:: with SMTP id u22mr3669189ooe.50.1591821536614; 
 Wed, 10 Jun 2020 13:38:56 -0700 (PDT)
MIME-Version: 1.0
References: <1587749770-15082-1-git-send-email-ben.levinsky@xilinx.com>
 <1587749770-15082-5-git-send-email-ben.levinsky@xilinx.com>
 <20200511221755.GA13585@bogus>
 <BYAPR02MB44077C8B7B7FD23FDE8E31B8B5B00@BYAPR02MB4407.namprd02.prod.outlook.com>
In-Reply-To: <BYAPR02MB44077C8B7B7FD23FDE8E31B8B5B00@BYAPR02MB4407.namprd02.prod.outlook.com>
From: Rob Herring <robh@kernel.org>
Date: Wed, 10 Jun 2020 14:38:45 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLGo380SRYska+xGgJhgF8NCRvY56ewafvSCU6c-LmhZw@mail.gmail.com>
Message-ID: <CAL_JsqLGo380SRYska+xGgJhgF8NCRvY56ewafvSCU6c-LmhZw@mail.gmail.com>
Subject: Re: [PATCH v4 4/5] dt-bindings: remoteproc: Add documentation for
 ZynqMP R5 rproc bindings
To: Ben Levinsky <BLEVINSK@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_133857_741195_B2BCDEED 
X-CRM114-Status: GOOD (  11.34  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "ohad@wizery.com" <ohad@wizery.com>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Stefano Stabellini <stefanos@xilinx.com>,
 "linux-remoteproc@vger.kernel.org" <linux-remoteproc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 Jolly Shah <JOLLYS@xilinx.com>, Rajan Vaja <RAJANV@xilinx.com>,
 Michal Simek <michals@xilinx.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 26, 2020 at 11:40 AM Ben Levinsky <BLEVINSK@xilinx.com> wrote:
>
> Hi Rob,
>
> The Xilinx R5 Remoteproc driver has been around for a long time -- admittedly we should have upstreamed it long ago. The driver in the current form is using an "classic" remoteproc device tree node as described here.

I would rather not have 2 possible bindings to maintain. If there's
been no rush to upstream this til now, then it can wait longer.

>
> I am working with Stefano to come up with an appropriate System Device Tree representation but it is not going to be ready right away. Our preference would be to upstream the remoteproc node and driver in their current forms while system device tree is maturing.

There's obviously going to still need to be some sort of description
of the interface between cores, but this has parts that obviously
conflict with what's getting defined for system DT. The TCMs are the
most obvious. If you can remove (or hardcode in the driver) what
conflicts, then perhaps this can be upstreamed now.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
