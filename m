Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (unknown [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 236381415C4
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 Jan 2020 05:09:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lhWAnLh9WkyYf5CLGVG9UGGzIVEJ5CsdoSv/uQaKVPs=; b=BTVIbDZvPv474L
	cs+iBWK01dGqWrFB21+/n7/4rdvRMHxyLHzc4o8h32hPl83KkmkG6lJXcbE1SiyuZD8mEQnrNI86b
	FHxiUIa/tNbuTHCd4zf6bMfxhrl5EQew0rHV3wyY24rQy5VrowKbzWPomS4H6Ejyz0Pn40mzuoxXc
	1/WMQ1eZGcgzB6L0G21PAPGPDgVXWFi62Tk9lyXO5Wj2WerQPa8k8rPbvIlqs8dPD6udqOeCwDDZG
	kLHihO13opGNANahPNg5dC+PvmdZSLwFjZae0hpwXOuGnJ0RIv+AwBStxyXM0jt/hhN/Fovc7I9d9
	ZHkvuca3gUFN/fSaDlfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isfOn-0006oR-Cy; Sat, 18 Jan 2020 04:07:49 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isfOf-0006o0-St
 for linux-arm-kernel@lists.infradead.org; Sat, 18 Jan 2020 04:07:44 +0000
Received: by mail-pj1-x1044.google.com with SMTP id a6so4052114pjh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Jan 2020 20:07:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=PIRa3Me1MuVP3scCn41TBw4mEuh3lRWcGYrwRLyuooo=;
 b=he/HqRKhdajTtzeAyutff/zMg8NhVoykxV8x8Lct0t2F+5QE+FJpEcsML/xjMv9DhO
 d21j+fpDGqrbXw7sgfg6XBrVGM6pQXGxJYD69E/6oWwKB7VW+++zgPYaSn6XywzMLSic
 VrvW06fTfC36SWN63zIYrFvMYdjpmV/s0tNervXM7wL3DGp12Jm6dMqd4bVx05KuYPdH
 Gd9EbcwrRuP4JMT2O4ovdHD0R/moQ3zufVkLenWPKEFpBhvmVvhkMShTlNKhDwbit67H
 esBV168gY1H3UlDETGjx4uJ9oVKusU7pZha/xjH/cr/GBjdEE+U64cDt/Q8XyCV5tT5T
 FDUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=PIRa3Me1MuVP3scCn41TBw4mEuh3lRWcGYrwRLyuooo=;
 b=FbxM+zROlBjs9azfV5D7f3Bl71Cbb2qUWxBABhXkwaCV12TmtyVgEjr1our2ABuQbe
 eM+gOaL/CcL7Lfe1+UuJUxsHdmEGEQpzxK2nER1GWVQU15Ivd/Y6GfFLpoaKu3kDgNmE
 +IOna3a2F5aY+1hNFdLK4JO6UcpEa0+kfba0ZMgwrwoCeYnKhSzI+C9neiDqwbOK3VHe
 D3DpfFuMYMIf7r9dkW5l5CNX+mijg2aOkW5a92xSVC8l+VT9HhQYZq/aFk9E0w/maVc4
 kx84LwNAip1O8vICAD90YHaimSIDvddiJHGLtqryqFr/1F06+dZeLlpC9onUzUNipoQn
 4Z+g==
X-Gm-Message-State: APjAAAWYfJorNKjxneHpzH4iPs1OW5a2ZOQIURoNxaGihmLoPLIl4xPx
 AuxGz8v2vBSwTWRtCXVYNOqeig/o
X-Google-Smtp-Source: APXvYqzn4rsu/9mzBMbb1i9gkk/w2Y1AZ9IYMLGgk0U3+gBrOS0TVCTIxhXEQRQCTFVx+2cV2J+Y+g==
X-Received: by 2002:a17:902:b212:: with SMTP id
 t18mr2853630plr.135.1579320459261; 
 Fri, 17 Jan 2020 20:07:39 -0800 (PST)
Received: from workstation-portable ([146.196.37.181])
 by smtp.gmail.com with ESMTPSA id c18sm30565333pfr.40.2020.01.17.20.07.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Jan 2020 20:07:38 -0800 (PST)
Date: Sat, 18 Jan 2020 09:37:30 +0530
From: Amol Grover <frextrite@gmail.com>
To: Olof Johansson <olof@lixom.net>
Subject: Re: [PATCH v2] drivers: soc: ti: knav_qmss_queue: Pass lockdep
 expression to RCU lists
Message-ID: <20200118040730.GA6783@workstation-portable>
References: <20200117133048.31708-1-frextrite@gmail.com>
 <5d77df7f-8693-0232-dbfe-0acfc37e040f@oracle.com>
 <20200117192555.baoxu4xd7krxgfjz@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200117192555.baoxu4xd7krxgfjz@localhost>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_200741_962205_C753AEA2 
X-CRM114-Status: GOOD (  17.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (frextrite[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "Paul E . McKenney" <paulmck@kernel.org>, santosh.shilimkar@oracle.com,
 linux-kernel@vger.kernel.org, arm-soc <arm@kernel.org>,
 Madhuparna Bhowmik <madhuparnabhowmik04@gmail.com>,
 Santosh Shilimkar <ssantosh@kernel.org>,
 Joel Fernandes <joel@joelfernandes.org>,
 linux-kernel-mentees@lists.linuxfoundation.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 17, 2020 at 11:25:55AM -0800, Olof Johansson wrote:
> On Fri, Jan 17, 2020 at 10:24:04AM -0800, santosh.shilimkar@oracle.com wrote:
> > On 1/17/20 5:30 AM, Amol Grover wrote:
> > > inst->handles is traversed using list_for_each_entry_rcu
> > > outside an RCU read-side critical section but under the protection
> > > of knav_dev_lock.
> > > 
> > > Hence, add corresponding lockdep expression to silence false-positive
> > > lockdep warnings, and harden RCU lists.
> > > 
> > > Add macro for the corresponding lockdep expression.
> > > 
> > > Signed-off-by: Amol Grover <frextrite@gmail.com>
> > > ---
> > > v2:
> > > - Remove rcu_read_lock_held() from lockdep expression since it is
> > >    implicitly checked for.
> > > 
> > Looks fine to me.
> > 
> > Hi Olof, Arnd,
> > Can you please pick this one and apply to your driver-soc branch ?
> > I already sent out pull request and hence the request.
> 
> Hi,
> 
> Can you please email the whole patch with sign-off to
> soc@kernel.org? Otherwise it won't end up in patchwork, which is how we track
> patches and pull requests these days.
> 

Thank you Santosh and Olof. I'm resending the patch to soc@kernel.org
as well.

Thanks
Amol

> 
> Thanks,
> 
> -Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
