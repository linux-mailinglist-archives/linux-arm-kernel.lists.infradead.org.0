Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEC1E131AAE
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 22:47:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vZdRr/OnxAduzD915KNjL8XGlZt6caasuGBEOZAd6kY=; b=KfM/nzJUBg0z2z
	3Aru/krZ26MZNWP9fdI4bd7vZtcvDbVsCH0QXehJXScsPzg4Zx5VGwPZykew+moak+RO+/uURM0YU
	KTNwrCBaxMRdags2X1QAbAbxiB7LkwGGU3sxcnSExEqK9X3EgEmhtcI/J8dBU7sq/FvwBsXKtOKQa
	U/6av2CWZv5EykeItcTOvCip7vw6mdhg8zgAVY632isDv/o7riPzKzVe59A6NQTNgXQuwGO1C84q8
	8CmbM2zI1iZC6S6CuTfZvDYRjITrrZkY9wRWC21OZkDAQaDy7d55JSX4RtgxyGdaIfIyxqDTwgd/G
	PYc1efAJcF/8bHIuBQPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioaDi-0002bD-Ch; Mon, 06 Jan 2020 21:47:30 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioaDb-0002aC-1O
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 21:47:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578347240;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=wVymaL2YR0nFZX0XYU+2dgAryYfSl5ztE4IIW1BSF58=;
 b=eGMOjc58zkM3U+7bNnKBdvCHCjxyhGoIjIM/pYrpsFWt4BnnmkOQx728N2pS6Mn7cBI7T0
 9/ZqZyFAZsrXDkhWKwCCA4DOAjzlkhUua963izjzP/xl31cW+Ju8Oq5qWpAzRMmmGUjqMX
 9joMNyp7RjUwZKPkp6gqNJ9ugdu+28A=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-271-TCcTQo0nM-aMoZc71vjK0A-1; Mon, 06 Jan 2020 16:47:15 -0500
X-MC-Unique: TCcTQo0nM-aMoZc71vjK0A-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9C0D3801E77;
 Mon,  6 Jan 2020 21:47:13 +0000 (UTC)
Received: from localhost (ovpn-112-4.rdu2.redhat.com [10.10.112.4])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B113E85882;
 Mon,  6 Jan 2020 21:47:10 +0000 (UTC)
Date: Mon, 06 Jan 2020 13:47:09 -0800 (PST)
Message-Id: <20200106.134709.1814886107715198121.davem@redhat.com>
To: wens@kernel.org
Subject: Re: [PATCH netdev] net: stmmac: dwmac-sunxi: Allow all RGMII modes
From: David Miller <davem@redhat.com>
In-Reply-To: <20200106030922.19721-1-wens@kernel.org>
References: <20200106030922.19721-1-wens@kernel.org>
Mime-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_134723_160105_A6DE7B3D 
X-CRM114-Status: UNSURE (   7.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: alexandre.torgue@st.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, mripard@kernel.org, wens@csie.org,
 joabreu@synopsys.com, peppe.cavallaro@st.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Chen-Yu Tsai <wens@kernel.org>
Date: Mon,  6 Jan 2020 11:09:22 +0800

> Maybe CC stable so future device trees can be used with stable kernels?

Please read the netdev FAQ, you should never CC: stable for networking
changes.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
