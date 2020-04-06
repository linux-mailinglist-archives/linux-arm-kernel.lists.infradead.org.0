Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 005D519F305
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 11:54:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G3y1LKG+nWUFuV2vNzRL8erv9Faur8nHM+uPcwKLxTY=; b=M1sFpW9fM7ZxcY
	B62L7196um+795ytv5J7oGvFk+dn7LViK1RisOACFJeuBexQVjnEmupNSITbMVZ8Qpe0m0n7xoYtJ
	4kSdS7JRgMLqFbECVgVM9TJH68iCggUiXb5WirGW8X5Nmk2ndOmap8TGfAy4TF9vySxnQJgza19zK
	lkaDtrl4AbC7VJJTVnfKhPE6Ef4lh/M1O9MtHpgmmswcbj2lA4EF064e5AIVlhkoa4vK06cG34H/d
	O/fcxgICW+vV44eGaCUgjWRyxXa7MqCBFv3q5yLdTjCOVATcvKfSQS0VP89eXwUWFcCLvr+M3Gyrw
	Whf6fN2pbmoFcGbiDd8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLOSk-0002Ts-Ie; Mon, 06 Apr 2020 09:54:38 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLOSb-0002TA-Hs
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 09:54:31 +0000
Received: by mail-ed1-f66.google.com with SMTP id c7so10719040edl.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Apr 2020 02:54:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Jq4dLklSvXAh4mHXbS3uqTp1YFNR8Y8OhfEZxV4SEp8=;
 b=B7wBcrp4+euem+D5JJuPWiUngGAPGwvTZpWkOThPOH3CncW5rn7JGB72Kp7h6kDyXw
 zDBFrin+VufKtMDLQ7mZaeO9rbpcOjcwZrzb33CEukZU0nboI4chV8ytwi8qKu/FiBDh
 DXTcZ/AIqs+u78WNfqGj6AXaHHF2S6rNCaZcn7iGkeD6UeZuIzss6ugfYDHc9GawqppT
 YxsZwIYJvMXw8U2XiVBmBjqySzgi8TairLUaBy40nd2BRXzzfC/eoR28n16TPgwy63CS
 K6SGfUyDkfIWqgQ/WMkx7KnDAtblb4I45fJa1Nvxd6iH1NXiet2Fq849ZVwu7CUMgJw2
 oijA==
X-Gm-Message-State: AGi0PuZDUHUHmwtcEp01G41wpDv1SRbouVM7s9qg1MmAGIsY7pSrLR82
 6qkHnUJmvadfb3mXhRm8Din6DXMZ
X-Google-Smtp-Source: APiQypIGsI1vy9jtZIncxZtn6HgnNsW1Vh3ZNhBDX+cUzlu30NjC5DdfbDeJxopv+1PyeG+Z0DSLcQ==
X-Received: by 2002:a17:906:30c5:: with SMTP id
 b5mr21234309ejb.102.1586166868311; 
 Mon, 06 Apr 2020 02:54:28 -0700 (PDT)
Received: from kozik-lap ([194.230.155.125])
 by smtp.googlemail.com with ESMTPSA id y10sm2858156ejm.3.2020.04.06.02.54.27
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 06 Apr 2020 02:54:27 -0700 (PDT)
Date: Mon, 6 Apr 2020 11:54:25 +0200
From: 'Krzysztof Kozlowski' <krzk@kernel.org>
To: Hyunki Koo <hyunki00.koo@samsung.com>
Subject: Re: [PATCH v4] tty: samsung_tty: 32-bit access for TX/RX hold
 registers
Message-ID: <20200406095425.GB13565@kozik-lap>
References: <20200401082721.19431-1-hyunki00.koo@samsung.com>
 <CGME20200403111520epcas2p42ef81138693ffaaa281499c7a24e0e48@epcas2p4.samsung.com>
 <20200403111511.10598-1-hyunki00.koo@samsung.com>
 <20200403115941.GB29484@kozik-lap>
 <000001d60b92$2adaee50$8090caf0$@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <000001d60b92$2adaee50$8090caf0$@samsung.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_025429_588674_E7759A2D 
X-CRM114-Status: GOOD (  12.28  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.66 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-samsung-soc@vger.kernel.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, 'Kukjin Kim' <kgene@kernel.org>,
 linux-serial@vger.kernel.org, 'Jiri Slaby' <jslaby@suse.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 06, 2020 at 06:35:46AM +0900, Hyunki Koo wrote:
> On Fri, Apr 03, 2020 at 9:00: 10PM +0900, Krzysztof Kozlowski wrote:
> > On Fri, Apr 03, 2020 at 08:15:10PM +0900, Hyunki Koo wrote:
> > > Support 32-bit access for the TX/RX hold registers UTXH and URXH.
> > >
> > > This is required for some newer SoCs.
> > >
> > > Signed-off-by: Hyunki Koo <hyunki00.koo@samsung.com>
> > > ---
> > > v2:
> > > line 954 : change rd_regl to rd_reg in for backward compatibility.
> > 
> > I did not see any change around line 954 in v1... so what was it?
> 954  line  is changed like below.
> V1 : rd_regb --> rd_regl : we thought, this register need to change to 
> V2: rd_regl --> rd_reg : we discuss internally, and 
> I decided not to change  to existing devices for backward compatibility.
> So we changed to rd_reg.

Thanks.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
