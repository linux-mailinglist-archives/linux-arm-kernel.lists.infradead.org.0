Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12017704F4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 18:05:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hh2vIO57FwpNLNzik56+tiO6vWCKPlfYhuaAFtA5T6Y=; b=Kh1KqqYC877y0r
	XYrbfmZ61A/2VO2ZDLFUFT4I8CxgKcOfPWc8vmdM2HpHsF0ax5GoeAm2oeRK9kaPK1pWeSZQbB6Zv
	rI2UfTGhAq4EjooKzlhaa25PMG41t38eCkuc3mBDONh+hsEpoT4LdGZ8+Ywq1vaQ8eQ4UlYj5uvsp
	0LnqWYCbr5RQARgherIArusc0YtGAkyTJyrVD7tLCHYBCLbe0Y/oM5tI+8FmoM/8FnVeFGe1yjERf
	sgSph77ew43d94p1PzbzeF36fPLpm6FxjcqA/VdxBly8C/2buycRrHJHvUZgwXo+DU7LhGG4W8SrN
	oktRlPFr4OBbLveDB1qQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpaoW-0007JO-J9; Mon, 22 Jul 2019 16:05:24 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpao0-0007EG-Nz
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 16:04:56 +0000
Received: by mail-qt1-x844.google.com with SMTP id r6so34820562qtt.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 09:04:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=vwvk1p704PvrHoU3x+syVrBIr03+GtruOtffq5nOmqI=;
 b=eCJDQVgp/TUa3SJDw5YNpJdxoRLDUf0uKWF8HiEN2E6tOilw6te7IXdJ74mZFUYqp/
 9cs4iQsc0KiVAOncyf/4OEnDeZsuNdAdxwUKQmiZzySVbAR5OjTuhXiGRkV1rgBYswjM
 IQx0Ulu4NMDBwDAviDS9g4pKXJW+xpv+Iy8d6aVLlz84ufr1JzYd1aeEamQT0VorPgKU
 QT1i21qMa2c8H2+8UBfm4o25QcGgTYS7VKw/3eTMHAe7UkpWzGXLekAdlCSWusHGhsa8
 cEkwa4My8xWUN30i19bWw4qGMFPnC91vuvyuUJqr/Slt5ziIHR7WpgLw+5d/ULuZjsfk
 lFPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=vwvk1p704PvrHoU3x+syVrBIr03+GtruOtffq5nOmqI=;
 b=HvA0tYpEaNoKkWGb8ptwyn8iJhP32KbTH8E8RG4Sar9XwpqMf261qQtNv4GQbGGjzV
 UlhgTOJVcLZde3sBhI71mXnkOlMxRLKdqqm+03lOOSjlWHXOTPCCdv5zOrciAqyCEC6C
 Tc5mdZi3GgvHwhSTaLDhL+yVUxM7DngTPTnT0RW1g9NbILR5M03w5IsR7V0UkBgBFrxP
 Ez/Q9oQZq46UJsN3ToHHDk4awkOWXT9n0Ox6GCVJoFpGW5+myYLyMCnuue1LNKDrfdWM
 h0I73r+8uqrHnvYL0+s3q5Ra79GSS3ZmRrFLWzOxY1uC0hygjdMDSHIZHLia0EF0mg31
 ozAQ==
X-Gm-Message-State: APjAAAUznoSnxaEAnzWGgKfxy7FiafRKqfxWWMa8JDNcAvfeP6sd1TjS
 e4oY7s4CA6fxYYoS05CRg/ghJA==
X-Google-Smtp-Source: APXvYqwAqmiUCOGD8gRTdb/gKf382wokrezGvhSEToPpHN31WEGoX97JjGxgPReHba9ZDH0CrbO+rw==
X-Received: by 2002:ac8:431e:: with SMTP id z30mr50035442qtm.291.1563811490053; 
 Mon, 22 Jul 2019 09:04:50 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-156-34-55-100.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [156.34.55.100])
 by smtp.gmail.com with ESMTPSA id y3sm20100502qtj.46.2019.07.22.09.04.49
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 22 Jul 2019 09:04:49 -0700 (PDT)
Received: from jgg by mlx.ziepe.ca with local (Exim 4.90_1)
 (envelope-from <jgg@ziepe.ca>)
 id 1hpanw-00059A-U7; Mon, 22 Jul 2019 13:04:48 -0300
Date: Mon, 22 Jul 2019 13:04:48 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: "Paul E. McKenney" <paulmck@linux.ibm.com>
Subject: Re: RFC: call_rcu_outstanding (was Re: WARNING in __mmdrop)
Message-ID: <20190722160448.GH7607@ziepe.ca>
References: <000000000000964b0d058e1a0483@google.com>
 <20190721044615-mutt-send-email-mst@kernel.org>
 <20190721081933-mutt-send-email-mst@kernel.org>
 <20190721131725.GR14271@linux.ibm.com>
 <20190721210837.GC363@bombadil.infradead.org>
 <20190721233113.GV14271@linux.ibm.com>
 <20190722035042-mutt-send-email-mst@kernel.org>
 <20190722115149.GY14271@linux.ibm.com>
 <20190722134152.GA13013@ziepe.ca>
 <20190722155235.GF14271@linux.ibm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190722155235.GF14271@linux.ibm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_090452_852457_84443E55 
X-CRM114-Status: UNSURE (   8.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
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
Cc: mhocko@suse.com, "Michael S. Tsirkin" <mst@redhat.com>,
 peterz@infradead.org, jasowang@redhat.com, ldv@altlinux.org,
 james.bottomley@hansenpartnership.com, linux-mm@kvack.org, namit@vmware.com,
 mingo@kernel.org, elena.reshetova@intel.com, aarcange@redhat.com,
 davem@davemloft.net, Matthew Wilcox <willy@infradead.org>, hch@infradead.org,
 linux-arm-kernel@lists.infradead.org, keescook@chromium.org,
 syzkaller-bugs@googlegroups.com, jglisse@redhat.com, viro@zeniv.linux.org.uk,
 christian@brauner.io, wad@chromium.org, linux-parisc@vger.kernel.org,
 linux-kernel@vger.kernel.org, luto@amacapital.net, ebiederm@xmission.com,
 akpm@linux-foundation.org, guro@fb.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 22, 2019 at 08:52:35AM -0700, Paul E. McKenney wrote:
> So why then is there a problem?

I'm not sure there is a real problem, I thought Michael was just
asking how to design with RCU in the case where the user controls the
kfree_rcu??

Sounds like the answer is "don't worry about it" ?

Thanks,
Jason

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
