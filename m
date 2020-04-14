Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E288D1A8043
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 16:48:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:MIME-Version:In-Reply-To:
	References:To:Subject:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qaNS8dawQXCKNu7WudiqHTP036e23NHEfcMgtNB9WsA=; b=bOHY8LTw4MvUhB
	Mh/wAnY5P+mk3wFvV3fhCRIoWaWd8L9jWxbHyE2gSWR+wiI2MY97pO4OmBc3dWUL8HfphHNhpkwZ5
	w9eKssREHt1DPtdHV8fZ3cCWVLUgzNxXk2mXHnXd3dU9Nx+2JU5Grp9UVq8ABc1sK66xNZDONIUZn
	sIGLp9YiDZY19B2tvtBTYUVdh36oAscDJnlfJbiaGzf63OHDW0e1imwJhUZ4Jpg9daMoPhSKC4GMG
	KnPnmVVWdhG+HfDSqnFk+MwUoBv1puZdvaxbCMrRyy7ql6m94HAu1+5jrqkLy5348kaMqSu3V++Bw
	2iIPXejybCAx9jhcbm/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOMrf-0004hy-Gr; Tue, 14 Apr 2020 14:48:39 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOMrM-0004aw-Up
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 14:48:22 +0000
Received: by mail-pg1-x542.google.com with SMTP id w11so6082720pga.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 07:48:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:subject:to:cc:references:in-reply-to:mime-version
 :message-id:content-transfer-encoding;
 bh=L6wwBLpMMetY/zxOEci/JVLuRBV/3LI/LldPvH06RfY=;
 b=jbyVR3i63K7T908IixpVArje1gguIVF9o17an2Ju6P4xd56heYoFmO/WcdvYUGOw83
 7DsRgEXQ7GdDOshFt28h6IZryHi6pCoL9TxpwNMwOPQ1WwJTF7JTL9c2RLAhjn11+Qtp
 81zgUeMjSRjvbeaU+lfmouqsrC6Fr6iqJFDEiznZAV1GOr4656U3Wr5nQootJ2ZQFOWS
 HzUhnCiHoZIIV8+m2lFOeHdd0TIJ4MPu25GdxxAiCtY8PSM3nTP3iBUlJWWpsDaARXRV
 7mWxg96+Qw9Kqu5tSPqHXEfSOUh6hwqt5xIdzBQ9ngUs43LWc7bZzpLIK5dfh+q7KRpc
 C80A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:subject:to:cc:references:in-reply-to
 :mime-version:message-id:content-transfer-encoding;
 bh=L6wwBLpMMetY/zxOEci/JVLuRBV/3LI/LldPvH06RfY=;
 b=Acsn4XLdBzqUfRnww8oG+MJX57cVGyeUtiR9ynTGCu3VofA/LJae6JcErbQaBRJFlS
 A/yUuXQHMJ6p2VhYj1fqK0Xziar6JMIgxPb2t95D1chl8MM1P9YI04Xs2jNaFsBRyJV4
 /4V6LCqnt6wjQd/71dXd1rdHrKrGWBKzybxSu0f1pXavCf9bU9j2MPZUe+tEoB4VZBKI
 /96UFiwJBv0JqTK+NqQjbob6uRutOi7IyQykW/Jd4Nqdb/D3/l/Rmyw0mLCn41/6zn5u
 I+c/WVHPR8pSRSdINlhV79zn48SZ+pRaRIBGOklTDeTCFoUypcXoae8wReBy0SRJ3m5n
 /pXA==
X-Gm-Message-State: AGi0PuaFdj/vCwy3EHr+QisCqNmK+WiszQaEViRjQtnl+OhdTnd0Tugj
 iKyWXq4rmxK9l8r1AJOKq3pZWITq
X-Google-Smtp-Source: APiQypK52jNzLdOIfO1gpMRdMkm3ocgjZEpddsb7bx1IdjG1eoLljeSOsDojocPs+NcHrGI7xJxuPA==
X-Received: by 2002:a65:688c:: with SMTP id e12mr1438881pgt.194.1586875698800; 
 Tue, 14 Apr 2020 07:48:18 -0700 (PDT)
Received: from localhost ([203.18.28.220])
 by smtp.gmail.com with ESMTPSA id k12sm10439963pgj.33.2020.04.14.07.48.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 07:48:17 -0700 (PDT)
Date: Wed, 15 Apr 2020 00:48:13 +1000
From: Nicholas Piggin <npiggin@gmail.com>
Subject: Re: [PATCH v2 4/4] mm/vmalloc: Hugepage vmalloc mappings
To: Christoph Hellwig <hch@infradead.org>
References: <20200413125303.423864-1-npiggin@gmail.com>
 <20200413125303.423864-5-npiggin@gmail.com>
 <20200414072316.GA5503@infradead.org>
 <1586864403.0qfilei2ft.astroid@bobo.none>
 <20200414130203.GA20867@infradead.org>
In-Reply-To: <20200414130203.GA20867@infradead.org>
MIME-Version: 1.0
Message-Id: <1586875675.f8q1grbltc.astroid@bobo.none>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_074821_058761_B84B1822 
X-CRM114-Status: UNSURE (   7.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [npiggin[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arch@vger.kernel.org, Will Deacon <will@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 "H. Peter Anvin" <hpa@zytor.com>, Thomas Gleixner <tglx@linutronix.de>,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Excerpts from Christoph Hellwig's message of April 14, 2020 11:02 pm:
> On Tue, Apr 14, 2020 at 10:13:44PM +1000, Nicholas Piggin wrote:
>> Which case? Usually the answer would be because you don't want to use
>> contiguous physical memory and/or you don't want to use the linear 
>> mapping.
> 
> But with huge pages you do by definition already use large contiguous
> areas.  So you want allocations larger than "small" huge pages but not
> using gigantic pages using vmalloc?

Yes.

Thanks,
Nick

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
