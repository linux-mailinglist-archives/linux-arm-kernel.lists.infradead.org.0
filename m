Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EDDD317ED
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  1 Jun 2019 01:28:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kWMxgRTNswBM3QcLEw1nQp/ham28UjleN3m02CKjEEY=; b=GgNa/3D2Y6uqgT
	diF26m22bA9tf1nrLSG2Mw9An3GVHPwp3Ai8OHesk2MWbSXqkJ33t9xuoNQ0SlJI1QW0Zu9wGZkPj
	c0Jm0snwDvNkn/6EA/wX/1zr4kTHlGxjYQ1ySxgflxLEPVhP2hKMQhF/+WA93Cjgb12xsqRalSwNk
	kRIoFo2dboyPNye8OqCacNMBOwIOy1ZmlAEh10THQSuIcQ/7yPDlWuLcwtnDMFCVCUryQxGyRlLY5
	/wpamql5MlB1Qha6Yc2UVvaRzp3rm80uYAvp5k9rGCcpwDd0YVZptYk0zRD+5jsvnPNOfCf2ZlCkN
	/HEvjhEtGgmLk1/bXSLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWqwI-0006QF-Hy; Fri, 31 May 2019 23:27:58 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWqwB-0006Pq-CY
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 23:27:52 +0000
Received: by mail-pg1-x543.google.com with SMTP id v11so4846501pgl.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 May 2019 16:27:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=1mBjmLwOKlNkyYhM6oxRhsf42lMAXU/xAGOi1IdZboQ=;
 b=ZNOteqQLyqgc+QbRl7AXNIxJGN4xjDTgG6lWt6T6hJIAi2uw3z3Flh39L0EupY/Gdy
 aRQu8htEcM2guXKL3DiQ4okSSGGyunEAl9Vs6GRc1UEOfPAiDmQ8zPwoUqSNG0OYQVV6
 EIib45uFU25OiqwIdyyh8xrqPokchZdfmTrwCmyplfHfbLDWbuuuOwUb+ovvtbfvhNA1
 zjW6vzLAyANZQjQVAtJnOlbpyMIjpq149dUyltnV5NgU5IpF1Yk5dIVTcoGsrgrl27Ql
 8PicUE4+rTtZi9T5oo0W1VHdKG2BtaIZImEFJFnrAmzM0oJR7kaWUvZ22S1Cz16LJR/k
 aIlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=1mBjmLwOKlNkyYhM6oxRhsf42lMAXU/xAGOi1IdZboQ=;
 b=Y7TS8jzqH4g+pRot4Hcjyo5kSvEBqCWD9ueXRxO6N/QLVogNIi4W+ryJDLB9iAwJcP
 rybPBY7exBPzDCW9DmprZGfoTZIznw28lIiJCmrw+gVB7IRrHHHaEZTLLt9PJ9phB1v4
 Ef9uDhL8nsIS4HHyAkI++3TGm9SAH777ihx55x+R8i9QfmFfdYe8Lbm3RnXaKPlFi4lh
 BGjP5+wP6ayiMK80Re9KdQMg8xNJDKu93gaHYq4TW7pFVNR8QP+5vhFWPmw8eS++bG6d
 /XzyvrhF6JbR3M7lEQFPIjpg7f95yjpuR6vzQZbDw57Yd2WC3RSACafOEN7oXML/2jRs
 kFlQ==
X-Gm-Message-State: APjAAAW7IKtw54Twl3V6dHOBqe33W9M3USBOmTNf1Vanilsh+ueBavTE
 4hfKCMW0J97swQfI1T9FOm73Eg==
X-Google-Smtp-Source: APXvYqw/ryB+xTJ5eNyo0R0Rz5FbaRSXOb+hJAMPW6Ub79YQuTrjFf0b/mvOzSK2WWNJ4P0EduX3Cg==
X-Received: by 2002:a17:90a:7147:: with SMTP id
 g7mr12603555pjs.42.1559345269878; 
 Fri, 31 May 2019 16:27:49 -0700 (PDT)
Received: from minitux (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id u1sm7196808pfh.85.2019.05.31.16.27.48
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 31 May 2019 16:27:49 -0700 (PDT)
Date: Fri, 31 May 2019 16:27:46 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH v2 00/17] net: introduce Qualcomm IPA driver
Message-ID: <20190531232746.GA25597@minitux>
References: <20190531035348.7194-1-elder@linaro.org>
 <e75cd1c111233fdc05f47017046a6b0f0c97673a.camel@redhat.com>
 <065c95a8-7b17-495d-f225-36c46faccdd7@linaro.org>
 <CAK8P3a05CevRBV3ym+pnKmxv+A0_T+AtURW2L4doPAFzu3QcJw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a05CevRBV3ym+pnKmxv+A0_T+AtURW2L4doPAFzu3QcJw@mail.gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_162751_430284_1FC29128 
X-CRM114-Status: GOOD (  13.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: DTML <devicetree@vger.kernel.org>, syadagir@codeaurora.org,
 Eric Caruso <ejcaruso@google.com>, Dan Williams <dcbw@redhat.com>,
 Networking <netdev@vger.kernel.org>, linux-arm-msm@vger.kernel.org,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, evgreen@chromium.org,
 abhishek.esse@gmail.com, Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Alex Elder <elder@linaro.org>,
 Subash Abhinov Kasiviswanathan <subashab@codeaurora.org>,
 linux-soc@vger.kernel.org, David Miller <davem@davemloft.net>,
 cpratapa@codeaurora.org, Ben Chan <benchan@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri 31 May 12:19 PDT 2019, Arnd Bergmann wrote:

> On Fri, May 31, 2019 at 6:36 PM Alex Elder <elder@linaro.org> wrote:
> > On 5/31/19 9:58 AM, Dan Williams wrote:
> > > On Thu, 2019-05-30 at 22:53 -0500, Alex Elder wrote:
[..]
> > So basically, the purpose of the rmnet driver is to handle QMAP
> > protocol connections, and right now that's what the modem provides.
> 
> Do you have any idea why this particular design was picked?
> 

From what I've seen of QMAP it seems like a reasonable design choice to
have a software component (rmnet) dealing with this, separate from the
transport. And I think IPA is the 4th or 5th mechanism for transporting
QMAP packets back and forth to the modem.


Downstream rmnet is copyright 2007-, and I know of interest in bringing
at least one of the other transports upstream.

Regards,
Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
