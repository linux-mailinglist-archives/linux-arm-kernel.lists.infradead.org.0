Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D528017E512
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 17:55:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UAgTg2zSOcbonwiq9OmyWfHA8v5pLFyNiFfWPdiiS0A=; b=RiTi2dIXTB1n92
	ikK/6Bxx8aG82ACZ38hrcGSMDgCdMWQxEmkSIr0GOv+/+GGMbJN7bFxe65CUvkS51A2EHbNpavp7A
	rxjou961UlXLzdxtjfYUNpBaXJnGBrD7FXgkQeZVI00HRLned9qdTPXmvmycAW4XuE+1OVb2/B24o
	5FBo1malYTuH9XnilJr60IH8Y709XVgn9oFnIokshLaT14tlFnEYFX8hnyLj0ftLAR6UQBuMJZXi6
	ONufmdiBDvIFsPvXB1+kJkRYoeESGnebVx0GzpL9xAyt3sYywM7GwJXKFqVi69WjJyu1w6RvcPoo8
	ZLBYYCqF8vf+Mlam7t1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBLgQ-0000Gj-Cd; Mon, 09 Mar 2020 16:55:14 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBLg7-0000GB-Oj
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 16:54:57 +0000
Received: by mail-io1-xd41.google.com with SMTP id d8so9822728ion.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Mar 2020 09:54:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tBM/EJVByJ1fvt0IaB7s42kBMtrMOfscdKxthc1f01o=;
 b=j7+hIRJ+WeLBqH9JZ71vlz/LU6RkYQnan8oxdrQmew18BkJPxDpnlDDs8qwjyf4S//
 6g/elDvgR2jQK9bQjetKagI64eXB91sAaSx3dWdbExpOSby3rqIq068TjSOY49q3LRJX
 B+gxeLX+9+e+V9rxkzHIy6bDZKe1isOWqYS6CeIzxl9PLIVG62uM6FLB21XuHHwNQsw5
 4MIhCTr8lo091TmPK/2vLwXAUNzV5BcPsOA/hBHHx/oplK6aQeultzspfXxzCom7Sy79
 V+MrWkL2/CTv96Ofq3PF0TuBWLJBDCR9ZKpcwqTcqtjnVRHOXWmWMvt0Sa4ev8N7Klo3
 PpSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tBM/EJVByJ1fvt0IaB7s42kBMtrMOfscdKxthc1f01o=;
 b=ms5VC17Ibnh6I+d5r/I46Mn9KIg1W2xtrrtRuxoxjHyoCGzWw3fLIM1/+4o1cfoNNL
 VeTiDvylpWREFPdr/7vc44/LZj3ti4evbf5w/RAlb1vPl8sJG8UZkeYQTiLp88la2vtK
 T+HicjY8Dm5Oi0DQuAIhQPSJly8w9NTmYL3JDq+p1MdB5b7JOb/Ggpupy5/76kdFJ1CU
 BWtZPsF3wulXprH5XfvUnBYsP5BldYbybFkPuOOeJNHl+i07gquLytChfW488jrcICMD
 rYxts2PiO6NBzm0ZZEyCes+7HQZRMsNnyLotTkCA0BoglSTE54XzQnowvxlWSKjTd2Em
 Giwg==
X-Gm-Message-State: ANhLgQ1LXC4jhI0iNAIkYsMs06jEbn72Z8NHFG8KG9VsTXx4UoTXwDQI
 RFVt1Gnsg1mZ8ypXGt5Qx+sscWfPG/exVIJGpW8=
X-Google-Smtp-Source: ADFU+vuolrK6LFWTF1i2AMSm9DahDorblsLbuuPqp++RHjvfHEfl6hLe/NsSx+TCiOg3yJcdPU9Z/vcKwZqJhKtkEUE=
X-Received: by 2002:a6b:3c13:: with SMTP id k19mr14304131iob.25.1583772893973; 
 Mon, 09 Mar 2020 09:54:53 -0700 (PDT)
MIME-Version: 1.0
References: <20200306042831.17827-1-elder@linaro.org>
In-Reply-To: <20200306042831.17827-1-elder@linaro.org>
From: Dave Taht <dave.taht@gmail.com>
Date: Mon, 9 Mar 2020 09:54:42 -0700
Message-ID: <CAA93jw5enz6-h1m=7tGFToK+E+8z3aD80pBef4AYkFrS2u3hHQ@mail.gmail.com>
Subject: Re: [PATCH v2 00/17] net: introduce Qualcomm IPA driver (UPDATED)
To: Alex Elder <elder@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_095455_829137_F7082267 
X-CRM114-Status: UNSURE (   9.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dave.taht[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ohad Ben-Cohen <ohad@wizery.com>,
 Susheel Yadav Yadagiri <syadagir@codeaurora.org>,
 Eric Caruso <ejcaruso@google.com>, Arnd Bergmann <arnd@arndb.de>,
 devicetree@vger.kernel.org, Dan Williams <dcbw@redhat.com>,
 Linux Kernel Network Developers <netdev@vger.kernel.org>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Siddharth Gupta <sidgup@codeaurora.org>, Andy Gross <agross@kernel.org>,
 Evan Green <evgreen@google.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-arm-msm@vger.kernel.org,
 Subash Abhinov Kasiviswanathan <subashab@codeaurora.org>,
 Johannes Berg <johannes@sipsolutions.net>, linux-soc@vger.kernel.org,
 David Miller <davem@davemloft.net>,
 Chaitanya Pratapa <cpratapa@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I am happy to see this driver upstream.

>Arnd's concern was that the rmnet_data0 network device does not
>have the benefit of information about the state of the underlying
>IPA hardware in order to be effective in controlling TX flow.
>The feared result is over-buffering of TX packets (bufferbloat).
>I began working on some simple experiments to see whether (or how
>much) his concern was warranted.  But it turned out that completing
>these experiments was much more work than had been hoped.

Members of the bufferbloat project *care*, and have tools and testbeds for
exploring these issues. It would be good to establish a relationship with
the vendor, obtain hardware, and other (technical and financial) support, if
possible.

Is there any specific hardware now available (generally or in beta) that
can be obtained by us to take a harder look? A contact at linaro or QCA
willing discuss options?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
