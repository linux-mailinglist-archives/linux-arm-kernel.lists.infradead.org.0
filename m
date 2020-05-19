Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 451EC1D8C98
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 02:54:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zd7SQfjvNVPofScAYN5Te0gaj2rE7TshTqn5QRQLID0=; b=o9l4/+WtnzL5P7
	JzodAQ3Btz0mr54Rf84BQUGnRyFDbmaT756SRNG8tggCVztwFPp6FQhPcpTZK9FndEFQgptG2T8MT
	lhTiU/TFUBEPg610X/iIChsP2Jv1xQKwbhJqZqhtDXORNa0vQb39pPPkjIjhS+eiplzGCp0V5lSPU
	4SjW+cer7lIeCAKA9qPN8XTGjiSQk4GGGTb2ZvXtd6c9kc8Jbi4y3urFVyoi8IBn0tDn2zgGCpt0F
	6qV1htVksPn6r6F10fzlRV40Z2/8bJ5s1eVHrAyMVAaErJIH0F4ODpDSNReswxiTSx5C7PMFhbvrN
	G2BbdAtlLGsgx802IpJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaqWO-0007SF-IC; Tue, 19 May 2020 00:54:16 +0000
Received: from mail-il1-x12e.google.com ([2607:f8b0:4864:20::12e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaqWF-0007Re-7N
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 00:54:08 +0000
Received: by mail-il1-x12e.google.com with SMTP id e8so11752250ilm.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 17:54:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dnlqiv3s9r+x7AGOyXDQ7LCMC4713kFG+83RL+Dc+6E=;
 b=XbM0FV51uwjGuwCvfPJ3DtOjj761r2uSKGvL8CQsQEiNIpIeVtHyinNTVL+R5yOr5H
 3Wf+6utEDu4WuO85gmBKOquLvBXBXZfvJomKt4W45+5J8grRJvo4gBaqCu6Jm3BLskTz
 sJYZGobiqz4KwPxrGfk8FqIEar/iuTozpPDNRlpb9SQkq3vxm1z2xM/RexOSEoakc1gJ
 ZkyVqYIera9PQubjhF3XMXr6PLDeEXi/rDbbCoWvr1Wd0Brvb1wiCvciyIRfXS2vVmIN
 V+QIrj894yWOkex1o9y/WFPIbeWbLAvh4d3RFgEA3XkYn77OnLClN0rvBZq8RH+HCFm7
 ijmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dnlqiv3s9r+x7AGOyXDQ7LCMC4713kFG+83RL+Dc+6E=;
 b=Qtb0aiF8vFioekHa7Rcz25wcBmT0qAo4UH/dMiYmZw/JC5GlPf2RjYqcIBnDLgiEr9
 A+aVgCEatmuRyCuRlru6/d4l43Wotr+U1HWvUjO7llTh0HmFccVFpTDEXOECG3F8Z9Y0
 sC2E6rEIn06EzQWZ3XcxyNfUuQ98YmNULK+KZ5NAeWhosAs0gJkbqUhq1BCLCtwDe7e+
 FYXalhqCgzGyphWIDf6UUokYXNfxGrE/sIsefJjOhynMYNKsXPtIkmBLkeYTdVKErcn2
 MAIZ3LB6uhi7Mbb1E9ibrxTN+IirmIVMHYGEnFOcR4p5DiDpWq4TyXUwM8fSv6JjOYzy
 PayQ==
X-Gm-Message-State: AOAM533LR71hYl8RVlW3vloy0kgJm+5MLZozVqvQSaNfjge5uvchoxLS
 j8ipsLT/FFXnUiZCoHIfEitzs3qSRwEv2zO9ZDg=
X-Google-Smtp-Source: ABdhPJw+LVAblyqh5WEGkNus4/r02SgA3wpg9ey4+8hSP/xiyYYVwyAG0ahKnzbyqCdSipzburJirP+tAG5rdObJwfA=
X-Received: by 2002:a92:d40a:: with SMTP id q10mr19896762ilm.87.1589849645488; 
 Mon, 18 May 2020 17:54:05 -0700 (PDT)
MIME-Version: 1.0
References: <0a50f0cf5593baeb628dc8606c523665e5e2ae6c.1589519600.git.viresh.kumar@linaro.org>
 <CABb+yY1wJMzakpz0h6ZxAh4Z3OB718f+Wq3RP0R4NZ_U=vRMkw@mail.gmail.com>
 <20200518073514.tjodf6qxg3wjzyb4@vireshk-i7>
In-Reply-To: <20200518073514.tjodf6qxg3wjzyb4@vireshk-i7>
From: Jassi Brar <jassisinghbrar@gmail.com>
Date: Mon, 18 May 2020 19:53:54 -0500
Message-ID: <CABb+yY0vihfQSi=067AUNZd8sHACJ_4CKvFvsoCfweVuL=RD0g@mail.gmail.com>
Subject: Re: [RFC] dt-bindings: mailbox: add doorbell support to ARM MHU
To: Viresh Kumar <viresh.kumar@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_175407_281804_2A61BF21 
X-CRM114-Status: GOOD (  17.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jassisinghbrar[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:12e listed in]
 [list.dnswl.org]
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
Cc: Devicetree List <devicetree@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 18, 2020 at 2:42 AM Viresh Kumar <viresh.kumar@linaro.org> wrote:
>
> On 15-05-20, 11:46, Jassi Brar wrote:
> > As I asked you yesterday over the call, it may help if you could share
> > some numbers to back up the doomsday scenario.
>
> Yes, I have already asked Sudeep to get some numbers for this. He will
> get back to us.
>
Thanks, current bottleneck numbers and the patch/changes to improve
that, would help.

> > > - With the current approach it isn't possible to assign different bits
> > >   (or doorbell numbers) to clients from DT and the only way of doing
> > >   that without adding new bindings is by extending #mbox-cells to accept
> > >   a value of 2 as done in this patch.
> > >
> > I am afraid you are confused. You can use bit/doorbell-6 by passing
> > 0x40 to mhu as the data to send.
>
> That's how the code will do it, right I agree. What I was asking was
> the way this information is passed from DT.
>
That is a client/protocol property and has nothing to do with the
controller dt node.

cheers!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
