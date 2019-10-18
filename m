Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09A8FDBBBC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 06:22:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O/2Quw6C8m4MC/1hrEtVeYak1mLAfNaqX6I5a94ixDA=; b=Co31r4fEeibGs4
	nCnk6IH5sFdJxMrtxw60LAaxMiWQy8Dl4I2L3aeMEWOOJifBflYh1jBy8lbX6X5AGOjKqy2Do5Yp9
	zMqI/BNk1G+ttlg0H+b6ywkPO7AmyOU94A3+C35O4ANr5zh6tuwDtC+54Lwjv3We7TdJuTblVdWfC
	UCAp2j/uGWSStPQ6mgyhroze2X9dbE94yQO1BAm9TpinDZrUr1OVbeSXsdaMjNF6xYztuOR1oJXc4
	Sz9yfChPgeJYUJDAZ6eAbQGRMRnf9z6y3PJBdLotWkyPef7wSG1bMpDBwZ+t5eWljZpVl+nzlTLeG
	4BxpuE+h1iAN2AtkhTdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLJm1-00070h-V0; Fri, 18 Oct 2019 04:21:57 +0000
Received: from mail-yw1-xc44.google.com ([2607:f8b0:4864:20::c44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLJlr-00070D-E6
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 04:21:48 +0000
Received: by mail-yw1-xc44.google.com with SMTP id d192so1720862ywa.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 17 Oct 2019 21:21:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xsX/qftxhkazt9hFT8dF57W5m8I435Z6GlII9cy+ECY=;
 b=LB2/6gRPtiwyOpmLwPi7yLfXzO/o74TSfvJfCt2GXYIAZXk8+Pf8VSZlmSRym9BhXU
 U5be31A1gQfNPmpGHHuUtf9B7X3L9QIQN6VdP1M/ufmL7MCuXFikuhLTDWjzGAhBq3V8
 mXga5/iHEYkl2fY5yH5MoccwlTwfjuJP2JeTKpSPLCsJWiY1E0UuEl7vL8htolCtAIVi
 yXEq15oEn0F6yyhSH+A8h2la3ySKUlKrFxDil1lNU2ahbL8u0jqtpXCEh0tEDer8H7nd
 6Y+CxLkBrQxqbAUGA7BoVFLcXfWMW90K61E+pYHK+otV2dkI5Yr3+lyuIc5InASL/zeV
 eXNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xsX/qftxhkazt9hFT8dF57W5m8I435Z6GlII9cy+ECY=;
 b=B8ikaTFtLsHPzcZ+W6311CMKbBhFqMEu7kIFumSef3hJFnyJl0W9zaLadSzTNIYO2C
 0siJLh3OcGrpiwfiVR61B8j1Xj0XVzQSsjhizKLheZwlkFBRVT/sT6V2f49X78fv/8RF
 w6imc4EPSiw1x3FFHHvIkojeEmzdQaxWrkIi+/yxQMLLwwr3NyVvlpUXzGPIc9yWFlkh
 2jIBmk+14To4nP3/hJDWPsX3E8VixLPYdEvQitSsujzTsB+71CBHttW/fQZN0MwoyyaS
 8sHIICQstDIkM3IysOa7LVHAnoFRm1/9Jvit7gOhXZAVxNWn/m027ZEsdAjPIN4xRzkA
 s3gA==
X-Gm-Message-State: APjAAAWAXaWypsVnGBgcX7OB9VPYT97RT4Cx3b24klO5/+Vjvdh9HJKr
 w2ESVD9NuSJxmYE7bY3YQ4R3+pIpPCXj29acmTo=
X-Google-Smtp-Source: APXvYqxwvxHZjKJg/YnuStSLc4n0H5LSqtfMOTfh+SFjPsB+sGtqQKsOlHWmrzk0Hkx+oX8i4/YwLHRT6gmxcwX16E8=
X-Received: by 2002:a0d:d605:: with SMTP id y5mr5180535ywd.13.1571372506022;
 Thu, 17 Oct 2019 21:21:46 -0700 (PDT)
MIME-Version: 1.0
References: <1571218608-15933-1-git-send-email-gkulkarni@marvell.com>
 <1571218608-15933-3-git-send-email-gkulkarni@marvell.com>
 <b8e1a637-faf4-4567-7d3e-a4f13dfa1cf0@huawei.com>
 <CAKTKpr4QoTDjbSxO4CvSH2sNvmrTJKjxi+RZH4mYfyDaaN96Sw@mail.gmail.com>
 <20191017154750.jgn6e3465qrsu53e@willie-the-truck>
In-Reply-To: <20191017154750.jgn6e3465qrsu53e@willie-the-truck>
From: Ganapatrao Kulkarni <gklkml16@gmail.com>
Date: Fri, 18 Oct 2019 09:51:34 +0530
Message-ID: <CAKTKpr5ntp5X6Lvp=rKT_F1E1ftdqtjSWTgpEOqEwaDMH2kc1w@mail.gmail.com>
Subject: Re: [PATCH v6 2/2] drivers/perf: Add CCPI2 PMU support in ThunderX2
 UNCORE driver.
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_212147_498782_240302AA 
X-CRM114-Status: GOOD (  15.05  )
X-Spam-Score: 1.7 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c44 listed in]
 [list.dnswl.org]
 0.6 HK_RANDOM_ENVFROM      Envelope sender username looks random
 1.0 HK_RANDOM_FROM         From username looks random
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (gklkml16[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (gklkml16[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "corbet@lwn.net" <corbet@lwn.net>,
 Ganapatrao Prabhakerrao Kulkarni <gkulkarni@marvell.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 Jan Glauber <jglauber@marvell.com>, John Garry <john.garry@huawei.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Robert Richter <rrichter@marvell.com>,
 Zhangshaokun <zhangshaokun@hisilicon.com>,
 Jayachandran Chandrasekharan Nair <jnair@marvell.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will,

On Thu, Oct 17, 2019 at 9:17 PM Will Deacon <will@kernel.org> wrote:
>
> On Thu, Oct 17, 2019 at 12:38:51PM +0530, Ganapatrao Kulkarni wrote:
> > On Wed, Oct 16, 2019 at 7:01 PM John Garry <john.garry@huawei.com> wrote:
> > > > +TX2_EVENT_ATTR(req_pktsent, CCPI2_EVENT_REQ_PKT_SENT);
> > > > +TX2_EVENT_ATTR(snoop_pktsent, CCPI2_EVENT_SNOOP_PKT_SENT);
> > > > +TX2_EVENT_ATTR(data_pktsent, CCPI2_EVENT_DATA_PKT_SENT);
> > > > +TX2_EVENT_ATTR(gic_pktsent, CCPI2_EVENT_GIC_PKT_SENT);
> > > > +
> > > > +static struct attribute *ccpi2_pmu_events_attrs[] = {
> > > > +     &tx2_pmu_event_attr_req_pktsent.attr.attr,
> > > > +     &tx2_pmu_event_attr_snoop_pktsent.attr.attr,
> > > > +     &tx2_pmu_event_attr_data_pktsent.attr.attr,
> > > > +     &tx2_pmu_event_attr_gic_pktsent.attr.attr,
> > > > +     NULL,
> > > > +};
> > >
> > > Hi Ganapatrao,
> > >
> > > Have you considered adding these as uncore pmu-events in the perf tool?
> > >
> > At the moment no, since the number of events exposed/listed are very few.
>
> Then sounds like a perfect time to nip it in the bud before the list grows
> ;)

I had internal discussion with architecture team, they have confirmed
that, these are the only published events and no plan to add new.
However, If any such request comes from HW team in future, i will add
them to JSON files.

I have incorporate all your previous comments, Can you please Ack and
queue it to 5.5?

>
> If you can manage with these things in userspace, then I agree with John
> that it would be preferential to do it that way. It also offers more
> flexibility if we get the metricgroup stuff working properly (I think it's
> buggered for big/little atm).
>
> Will

Thanks,
Ganapat

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
