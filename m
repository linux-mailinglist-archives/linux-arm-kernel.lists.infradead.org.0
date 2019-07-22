Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ADB770369
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 17:17:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MIx4BAnD5iaCl2nJkKuHuss/aFcimseU8ZJt0FWYS6Q=; b=rYp+8Afo+L90si
	/IKGPwUMp+MvSAvBwRUZP8hSDLxP5awB9RwM3L9Qv45i/90LGpQhnFRALod8gUFY83NpsHug/wK05
	lh7b+Q8StPx97VvGNp10+UV4kEiQdab95Wsk26/TzEOSWQlhRkrQoSuUWJOljSdlwSJ7K0LVOMYuZ
	Rc0a/HVuOdOUP63Fzu9IU9r//wVhrOL28t5qYiHyaSv/IhouG8YbaJH1SNMbM2BB4DzqOA01W7eAA
	aSze/M+im+gCF7jkkqGI8bhEnBQNLbamO84xzI5rpuJV3twTukSBy/SvUDtCndKqAlrUKhcZmZS43
	iYRBvBip0NEoxP3SX+0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpa3e-0007UZ-Bk; Mon, 22 Jul 2019 15:16:58 +0000
Received: from mail-pf1-x434.google.com ([2607:f8b0:4864:20::434])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpa1T-0005U4-Sd
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 15:14:59 +0000
Received: by mail-pf1-x434.google.com with SMTP id u14so17541110pfn.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 08:14:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=joelfernandes.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=i8M6AK4de9Ik8pIGK7ZSAo/fkLcx89Rz2FU4ueU7AtI=;
 b=XQ0f5nx8fa3pklvdGG2u9IOZZJTUyDUTYVVk+sNJ3SCJPR77BhV8NbHcipLbVy1xvT
 Slg0Se3QHTC0ZyO53T8oEMnYmpMj/IpwJ3J26/3ycCvlPIjGxwvchFbXcMJqk0o/mpqq
 1Yt0CuEo1ILTMuVgHTe5nTzixjn08mjGXwYpQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=i8M6AK4de9Ik8pIGK7ZSAo/fkLcx89Rz2FU4ueU7AtI=;
 b=DCdTkKBFXsAbThbIBjlguZIGB3tKc0+PZ7SiJbo+cdt8xZVk9/g0tOYUXkN7MT2GiO
 TrYn9pTbbyEqHQ6jq9hUPaeVWF5DOSWC/ATQ3DkhjnIFmw9cp5AFzi1pG5JCJV5nw1Ck
 WpnL8GWQliQmiMef476ITFPc5uKYftFgpv+Bz8h9rkU5HhfignWS9n3vhiUq19MxiDVM
 ioF7BeTjeOgpL/VIpFWkiWHzVjd1SKUQK9iHq5HgHSVxk+K85H+qB8vnqXu5HsnzjcYD
 8FXBVWnb6QaJvPrMfjZDEGkEbAIE0vAQTVW8LbieTjEdknHLCKeO93e6mY6Ogjq+7B/t
 xXQQ==
X-Gm-Message-State: APjAAAVQJvtwNlLJpK9RkmexW2djqKARrZ0QnXQd4zcWk0KHeCYLG3Gl
 OfHlsol8YXtVvBpevLKM9BM=
X-Google-Smtp-Source: APXvYqydSiyMRzj6QXFVzUWNzUL0LUUvnGotJgLD9n9VUjcgfggnl8W+/75TLlsXhUbwOLV6q6l9PQ==
X-Received: by 2002:a63:1310:: with SMTP id i16mr71092692pgl.187.1563808481910; 
 Mon, 22 Jul 2019 08:14:41 -0700 (PDT)
Received: from localhost ([2620:15c:6:12:9c46:e0da:efbf:69cc])
 by smtp.gmail.com with ESMTPSA id h1sm51944925pfg.55.2019.07.22.08.14.40
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 22 Jul 2019 08:14:40 -0700 (PDT)
Date: Mon, 22 Jul 2019 11:14:39 -0400
From: Joel Fernandes <joel@joelfernandes.org>
To: "Paul E. McKenney" <paulmck@linux.ibm.com>
Subject: Re: RFC: call_rcu_outstanding (was Re: WARNING in __mmdrop)
Message-ID: <20190722151439.GA247639@google.com>
References: <0000000000008dd6bb058e006938@google.com>
 <000000000000964b0d058e1a0483@google.com>
 <20190721044615-mutt-send-email-mst@kernel.org>
 <20190721081933-mutt-send-email-mst@kernel.org>
 <20190721131725.GR14271@linux.ibm.com>
 <20190721210837.GC363@bombadil.infradead.org>
 <20190721233113.GV14271@linux.ibm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190721233113.GV14271@linux.ibm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_081445_729927_34977AFC 
X-CRM114-Status: UNSURE (   8.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:434 listed in]
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

[snip]
> > Would it make sense to have call_rcu() check to see if there are many
> > outstanding requests on this CPU and if so process them before returning?
> > That would ensure that frequent callers usually ended up doing their
> > own processing.

Other than what Paul already mentioned about deadlocks, I am not sure if this
would even work for all cases since call_rcu() has to wait for a grace
period.

So, if the number of outstanding requests are higher than a certain amount,
then you *still* have to wait for some RCU configurations for the grace
period duration and cannot just execute the callback in-line. Did I miss
something?

Can waiting in-line for a grace period duration be tolerated in the vhost case?

thanks,

 - Joel


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
