Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89C2720243F
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jun 2020 16:45:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:
	In-Reply-To:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dee7JlpIIOM58I/bUSWpJQ2msffSgn06Aj1Az0X0T4Y=; b=u/qNhgq4/17p+P
	u2/S7SAxPx9eaHbLEcVjVkxYgl7FVwFermFhM38v03J5yywqFTqCw00wD0ff84r4EFvol7Yp8iQLa
	GUCU2j6zwOaO3zPREZPNMm0n+DA03VCTmiSjvVxQIJZRFDPpB/FkIx6Li5MXK8E3bnFhokKhVs+Uh
	K3BpmmuKqBruk13IPHglN1VIc8jyMTrZJ7icJJnYAHuzlEVolulCUTclY2gizYGORI3RRiC90+olD
	vbOeXP4lqNkWPASLugaCgc6gqzrL8GvXQajBt0P/Y7efjOJRXfn4ZkrY2uhdDVn/MIz53ywDBfsjE
	L0jvNfv1+aa9lj6fqQgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmejx-0000AB-PN; Sat, 20 Jun 2020 14:45:05 +0000
Received: from mail29.static.mailgun.info ([104.130.122.29])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmejl-00009e-NP
 for linux-arm-kernel@lists.infradead.org; Sat, 20 Jun 2020 14:44:55 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1592664291; h=Content-Transfer-Encoding: Content-Type:
 MIME-Version: Message-ID: Date: Subject: In-Reply-To: References: Cc:
 To: From: Sender; bh=Z5Q7QuSRV0AlAio71S0FB6kALc6xp3I4DkvvHs47BtU=;
 b=gdcQAG3wWBm78smof9mFvOnwZQKlmZ5Y4pUXKf8llp77LBPC76t5PeCfUH8RczNQ981GhAfz
 FT5kkvA9uavc55RAJzgDYLjMqQZFBrw3ugIBl2tdhLehGgfWNliKejCKWtaAI8bDhx8vLIL8
 8+fV3jLaS9NBkEneZWWMaU3r5d8=
X-Mailgun-Sending-Ip: 104.130.122.29
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n08.prod.us-east-1.postgun.com with SMTP id
 5eee20e10206ad41d109ce16 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Sat, 20 Jun 2020 14:44:49
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id CE424C433CA; Sat, 20 Jun 2020 14:44:48 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from Pillair (unknown [183.83.71.149])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: pillair)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 3E189C433C9;
 Sat, 20 Jun 2020 14:44:45 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 3E189C433C9
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=pillair@codeaurora.org
From: "Rakesh Pillai" <pillair@codeaurora.org>
To: "'Evan Green'" <evgreen@chromium.org>,
 "'Bjorn Andersson'" <bjorn.andersson@linaro.org>
References: <1589946996-31264-1-git-send-email-pillair@codeaurora.org>
 <CAE=gft5pcHwK8yjObNSSH=U_B6Pz++bDaeUxZhPyJfG2E7LRAg@mail.gmail.com>
 <CAE=gft5So9Uk2UqRWs2zFO_iD+6ofMy97bKP4HpgM1Wu6Duxvw@mail.gmail.com>
In-Reply-To: <CAE=gft5So9Uk2UqRWs2zFO_iD+6ofMy97bKP4HpgM1Wu6Duxvw@mail.gmail.com>
Subject: RE: [PATCH v11] arm64: dts: qcom: sc7180: Add WCN3990 WLAN module
 device node
Date: Sat, 20 Jun 2020 20:14:43 +0530
Message-ID: <000101d64711$587929c0$096b7d40$@codeaurora.org>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQG/PI1FMT9lT4wFnqoECWl87ZLpcgLOq7cUAp/L6tWo5DW1wA==
Content-Language: en-us
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200620_074453_825120_3E61343E 
X-CRM114-Status: GOOD (  11.80  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.29 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [104.130.122.29 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: "'open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS'"
 <devicetree@vger.kernel.org>, 'LKML' <linux-kernel@vger.kernel.org>,
 'linux-arm Mailing List' <linux-arm-kernel@lists.infradead.org>,
 'linux-arm-msm' <linux-arm-msm@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Evan,
All the dependent patches are already merged.

Thanks,
Rakesh Pillai.

> -----Original Message-----
> From: Evan Green <evgreen@chromium.org>
> Sent: Thursday, June 18, 2020 4:15 AM
> To: Rakesh Pillai <pillair@codeaurora.org>; Bjorn Andersson
> <bjorn.andersson@linaro.org>
> Cc: open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS
> <devicetree@vger.kernel.org>; linux-arm Mailing List <linux-arm-
> kernel@lists.infradead.org>; LKML <linux-kernel@vger.kernel.org>; linux-
> arm-msm <linux-arm-msm@vger.kernel.org>
> Subject: Re: [PATCH v11] arm64: dts: qcom: sc7180: Add WCN3990 WLAN
> module device node
> 
> On Thu, May 21, 2020 at 9:19 AM Evan Green <evgreen@chromium.org>
> wrote:
> >
> > On Tue, May 19, 2020 at 8:57 PM Rakesh Pillai <pillair@codeaurora.org>
> wrote:
> > >
> > > Add device node for the ath10k SNOC platform driver probe
> > > and add resources required for WCN3990 on sc7180 soc.
> > >
> > > Signed-off-by: Rakesh Pillai <pillair@codeaurora.org>
> >
> > Reviewed-by: Evan Green <evgreen@chromium.org>
> 
> Looks like this never landed anywhere. Is it blocked on something?
> -Evan


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
