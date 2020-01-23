Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C88C1460C5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 03:39:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nn6Hvvp8hvwvwV3n7pt3eT0gukCr5AxVCjmoqr/bU6I=; b=tHdXMWYR7rU8an
	AdG8OndbH+tqxRzfZs0I45O8ZNCWIw+vVTh+8bvxUtBJ5UgnTM5OszWqZSkBSTGvSCO6/YDGV+D1O
	VPJwx5rIqqXcKsrhySBadnZN4pGaBU1/9lKwLhWozB+Rzgg0o8+x5ZXnsB5j6rBsPXb3CHLfsOysQ
	YJLMIGNl1S1Ij3Z0pauvgznu7f6JK66SEGHvR+x+Jzfk2cyFw2JLj4EQmfbNidg/jOG9L7G5pdH+E
	ZrGPLA/1H0fCIaCCQ3woqCE/uy82jwpWhjorccr95LfL20OiqzFa/pNCR7HI9ysyDmmHqVqCZRIHC
	HqLRlGLSKNF1GGjVXNkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuSPF-0005VJ-76; Thu, 23 Jan 2020 02:39:41 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuSP4-0005Ue-IV
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 02:39:32 +0000
Received: by mail-pj1-x1043.google.com with SMTP id r67so486454pjb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 Jan 2020 18:39:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=bTqNrmZc4XwB7mbH5XKk8hIXReWiy2o/x14mzISIa8Y=;
 b=byikFvWWlkqO1f5z4PSmmOvGSP4X745Zi5Zxzm8EBh0qZ8UWn56+B0yzEt6K61kzgH
 UIH4OHaJLtDSr4LI+pVWG+YieX7Ut4IOOluIanj5iVpOVFuSMZjaB2ma+d15j1F5z671
 LH3wlYrHF15Xms+98W2VTz1Q68Lk1JKy3zffRSylF7hbM1lQGXsrNljDC7N/y8OwPr8L
 1pXPyvW9a+MC72GbEGM1+4t45D36jbtqH1BA195w/YehECEagnR8xW4NbY8HOGsp2jgF
 x2VyyxV7PoqCGSv4p6vcZGJ1Pyat9mZznroY9sX+kV3dv0/aqNm9j3DPzxic1emFqhPv
 05/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=bTqNrmZc4XwB7mbH5XKk8hIXReWiy2o/x14mzISIa8Y=;
 b=tLnKP11gPqPZiEjUZK3Ab7fHkyqn7H0XJeE3P8odV1iOdWZ4hZqFlEmF2LsRXMiLcs
 zFnvQiX2iVhw9MiATW26Th5CZ6JPTi8VWYedSUwvCBSGVUBklVsGn/Vn6owv7qWuMsBD
 3kE/anu0Lhay/4qxEsxXA+eyR3daZhTJDGLI36FuYi+is5mzRj3p0v5eWK2lSwtggHBO
 t/ZpVBjR8/ImDSwAbOZCI9m09dPJEb5NFHXBSPlhP+2KuDYOTXjGYYxdHHaNtINYe7s2
 IdXgMFaH7LIdKR0CIBtw2LnZHpIIlFSWpKPBoTDNkBw3DSjDl6W0auCc6MomOyTfQujs
 SpNQ==
X-Gm-Message-State: APjAAAVK3aBkjW+dO5E6LOb6x6TSiGrlViDMYKB2BlmFr59p7oS5UqLP
 /rXugYJn9381j9/kBkuFltdWpA==
X-Google-Smtp-Source: APXvYqy7I+trccw5AXOWtnefRTubn87fuxIQql4VUIPbEhXpw2iqsLDrMfyucFrbZ7GI1P996ynOSA==
X-Received: by 2002:a17:90a:c301:: with SMTP id
 g1mr1870273pjt.88.1579747167904; 
 Wed, 22 Jan 2020 18:39:27 -0800 (PST)
Received: from localhost ([122.167.18.14])
 by smtp.gmail.com with ESMTPSA id w11sm386820pgs.60.2020.01.22.18.39.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 22 Jan 2020 18:39:26 -0800 (PST)
Date: Thu, 23 Jan 2020 08:09:24 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Cristian Marussi <cristian.marussi@arm.com>
Subject: Re: [PATCH V3] firmware: arm_scmi: Make scmi core independent of the
 transport type
Message-ID: <20200123023924.roqc2iyx4wmukk4p@vireshk-i7>
References: <4b74f1b6c1f9653241a1b5754525e230b3d76a3f.1579595093.git.viresh.kumar@linaro.org>
 <3a8836dd-99d3-faff-af05-2032d609f594@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3a8836dd-99d3-faff-af05-2032d609f594@arm.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_183930_642424_753DF7C0 
X-CRM114-Status: GOOD (  14.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: peng.fan@nxp.com, arnd@arndb.de, jassisinghbrar@gmail.com,
 linux-kernel@vger.kernel.org, peter.hilber@opensynergy.com,
 Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 22-01-20, 12:44, Cristian Marussi wrote:
> On 21/01/2020 08:27, Viresh Kumar wrote:
> commment is obsolete

Right, they need to be checked everywhere again. Sorry for missing
that earlier.

> > +struct scmi_chan_info {
> > +	struct scmi_info *info;
> > +	struct device *dev;
> > +	struct scmi_handle *handle;
> > +	void *transport_info;
> > +};
> > +
> > +/**
> > + * struct scmi_transport_ops - Structure representing a SCMI transport ops
> > + *
> > + * @send_message: Callback to send a message
> > + * @mark_txdone: Callback to mark tx as done
> > + * @chan_setup: Callback to allocate and setup a channel
> > + * @chan_free: Callback to free a channel
> > + */
> commment is obsolete but I would also ask: are all of these operations supposed to be mandatory supported
> on any possible foreseeable transport ? (beside the obviously needed like send_message)
> 
> I'm asking because they are all called straight away from the driver core without any NULL check
> so that if a new transport should not need one of them it will be forced to anyway implement a dummy one
> to comply, which it will be needlessly invoked every time.

They are kept as mandatory for now as we don't really know how it
will look for other transport types. Lets make them optional only when
someone don't need to define them. It would be a simple change anyway.

> >  /* Each compatible listed below must have descriptor associated with it */
> >  static const struct of_device_id scmi_of_match[] = {
> > -	{ .compatible = "arm,scmi", .data = &scmi_generic_desc },
> > +	{ .compatible = "arm,scmi", .data = &scmi_mailbox_desc },
> >  	{ /* Sentinel */ },
> >  };
> 
> minor thing: shouldn't the chosen transport being configurable at compile time with some
> option like CONFIG_SCMI_TRANSPORT_MBOX ? or via DT ?

It is configurable via DT. The compatible should look different in
that case, something like: "arm,scmi-<newtranport>".

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
