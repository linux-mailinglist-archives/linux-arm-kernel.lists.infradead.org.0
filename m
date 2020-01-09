Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB4F813556C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 10:16:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eEpuQGdpJTkiVogHV/yUuG15/dAwAvCq1CDLc/q10cI=; b=nZMZFoAoIJaUtL
	jotY0VO4uLjOe2C36ZfSTIfFmldeB2B8VqoYecYRaS/7W5k+b4l7hKJ6tG9jT38bk/184Zjddl5le
	arQfabk6o0dudRkU5Dse+n4QD3Imm3JJv0Iouf5MuwNU4KTQpjWGamHuCBpLxDT8NsD2Dwp2J9kF0
	iCqp5vyTE0pCvNf+NqhhDjjuEFnFohuQCJxqKmhYD9CzY5PmU0O4IEjbcM4xOoUMjh4W6fWxIeijK
	LS5jmtqbKU6IvGw9WB4eLu+CeK6H6/Znu5ZDyh/6AzHS2aAakwaXw4Qz2hW37v4NOZQChCDuw2pc8
	QguOBFclIzoA5Ne76E1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipTvd-0001cE-Hs; Thu, 09 Jan 2020 09:16:33 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipTvP-0001ZD-Cy
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 09:16:21 +0000
Received: by mail-pg1-x544.google.com with SMTP id z124so2913725pgb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 01:16:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=LhceEG3UhA0whwHt1MK3h6+cCL04vTq3JH/shOvFsrQ=;
 b=cnRPew3XWiPXqcRGiN7BEZsnaW0ivBrmTgYDkqDwMIeibcDlESn0xD67dJ7Hz+B8y+
 Smxe57Zyi9Paz8ABIUBUPcZkV+fqootaT1SgxRAGR7NzM+lty6dI7lmFmSwu6lBJYYdA
 FAHgr/YMtOObVtFEzer6wvXdAcDDBNuPOv8rQGXTRVinSSkKt1nQ961Hg38bz3dMbb7c
 KYCXcXghI9+Nq3YDK5cyhpY8fcFaN4SexwEgSfXWhZEs96Hynh/iI6NJow+ahStMfaB+
 mMiSPeWKHUgoU37yccqkGn7+iR8Ii1KKBK2fgpsTPGcVyjKcQ6CJGnJAgs8gRiF3E2SK
 N1Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=LhceEG3UhA0whwHt1MK3h6+cCL04vTq3JH/shOvFsrQ=;
 b=Vl3R5/fIv0cd0/dkgYhNvShagpYjHicoErYOFm5QE3c4vi7ALCaNM+CuTzJDWmzkJq
 ZpQMzhpZEeaTTlgt20KNvsMIWPpeDUYF5Wpi+ZePMgf6xq0qc8IH8oZfs1eggKn0QOBj
 EQ9KZcPc5YNJXAQzSPJFVMixLEHnHaYMMh1lfDQnJ1IxTrXQ7+aVWpo8qJyBlw8Uw47N
 3UEQE9yu1G3I89MMI7Edxhm/ltem5LN8ijZVwn//CQZAX7TXw85UXT0MRDQa9efmzfyf
 3FD5X52egxRBCknz5LoYk9/1XeKmfNkrq2Nnx8xsIlk/pWQqM83edwFYQJNFV3+MJZJ9
 InZQ==
X-Gm-Message-State: APjAAAUwV4XcD5JJ7gn6Th/Ms4+3Zd6CopQ8io7jO2MleCxUpo/3PKlE
 0EdFmQfOxiGPTRMal98+zuVf5w==
X-Google-Smtp-Source: APXvYqwVlE2aRDWxTdxtk/WQvDtvsNKnq/FDp4We/vNa60vMihisUPjSivxC/byqI4W23qZOZe+56Q==
X-Received: by 2002:a65:4c82:: with SMTP id m2mr9844041pgt.432.1578561376259; 
 Thu, 09 Jan 2020 01:16:16 -0800 (PST)
Received: from localhost ([122.172.140.51])
 by smtp.gmail.com with ESMTPSA id j94sm2335952pje.8.2020.01.09.01.16.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 09 Jan 2020 01:16:15 -0800 (PST)
Date: Thu, 9 Jan 2020 14:46:13 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] firmware: arm_scmi: Make scmi core independent of
 transport type
Message-ID: <20200109091613.fx2ggmmjvgjempks@vireshk-i7>
References: <5c545c2866ba075ddb44907940a1dae1d823b8a1.1575019719.git.viresh.kumar@linaro.org>
 <CAK8P3a3=q2zX9xQo7eZKp7e70rAeNB8VoSjg2aE06QJuSw8y3Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a3=q2zX9xQo7eZKp7e70rAeNB8VoSjg2aE06QJuSw8y3Q@mail.gmail.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_011619_438892_72036F40 
X-CRM114-Status: GOOD (  13.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jassi Brar <jassisinghbrar@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Sudeep Holla <sudeep.holla@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09-01-20, 09:18, Arnd Bergmann wrote:
> > +static int mailbox_chan_free(int id, void *p, void *data)
> > +{
> > +       struct scmi_chan_info *cinfo = p;
> > +       struct scmi_mailbox *smbox = cinfo->transport_info;
> > +
> > +       if (!IS_ERR_OR_NULL(smbox->chan)) {
> > +               mbox_free_channel(smbox->chan);
> > +               cinfo->transport_info = NULL;
> > +               smbox->chan = NULL;
> > +               smbox->cinfo = NULL;
> > +       }
> 
> There is something wrong if smbox->chan can be be one of
> three things (a valid pointer, a NULL pointer, or an error value).
> 
> I see this is a preexisting problem, but please add a patch to
> make it consistently use either NULL pointers or error codes
> and remove all instances of IS_ERR_OR_NULL() from this
> subsystem.

This isn't a subsystem problem actually. mbox_request_channel() never
returns NULL on error.

@Sudeep, do we really need the IS_ERR_OR_NULL() check in
scmi_mbox_free_channel() helper ? Or can it just be IS_ERR() ?

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
