Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F1AC1CE04E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 18:21:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GQ55/NLtJHkbeRMWkAZ6Kj7VI6O9YqWg6EVY9Ojz4GQ=; b=Grn5AxH1FEgYIK
	lZQTW3bx66MwnbnkQPfBSzKZtZ/x7TmkBozpsSnyXL7TbNZdRQPwHWusdQcxn0KdCTIcFQ7NeMwLW
	BYLL5kFZFV5ARLka1d+6rxsTj+NK3Z4E3wnPqOYIt7FGPve8dDxzIXWOgCDYp2fhiAXrNivNmD7To
	6q2SVrkylScvPH4vnXYUZ0SDLWO1VHvVzCe/lCOhTSfsx+aO+rSPgk1zXOa6MrG5THLX7kDDtZhyP
	SwldHiprAWMLMgGvQJgAjnZWQnpYDCRit4kNiJEJHJ/eKbEGwFmvC+j79i5Xd7tz7NxSyHl3vCoYz
	REzHOAVjHlBzRbTHty0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYBBF-0006Hn-2M; Mon, 11 May 2020 16:21:25 +0000
Received: from mail-yb1-xb44.google.com ([2607:f8b0:4864:20::b44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYBB6-0006GX-BZ
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 16:21:17 +0000
Received: by mail-yb1-xb44.google.com with SMTP id m10so3012305ybf.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 09:21:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iIvYQf7+HkPJXF+hLzvsrOFOyym3PIWkrBrNtFo1Fws=;
 b=ZpUfTauQEdSZlM5MU4B1FmbS5bSC5NWKY8XrLbs0L8nNYjucS3yZs6FqZsseAdNky0
 pzTc/lHXb69MryUouePkiALwHunbGM2/hJPYdfvoJn5Kf0bSlrOIO0VcxmMpdtWIfFot
 Xhv+drD78LRFgHfloGaGsW8ua41ZldwJsCIZjX/7rsZxmJVGIO7imCVigrotlvNG24pH
 B+KfmDVf6VwFe+jZDGa2kQFXEmkY7bFDjojGA178OB1r8UHO79p1nI1EcOYle18q8xXO
 cg0OwquKZaIhnXz4XYH4YctjtI33QgzWG+2kq+bFT1+mFwaGjTUT3dy6rA9/6DBWHzhB
 JuiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iIvYQf7+HkPJXF+hLzvsrOFOyym3PIWkrBrNtFo1Fws=;
 b=Wr0RhbSmAteMtyXXRkqpVkUKhqSZCxSPROO5n8zcDsaPho3kIR7OeB/MBDm0qL+vQO
 r4uK6Gr39d7fdPK72oiUb6YiCwfgNJeAl4MF0/kpk/uVT9ZzSLV+7TBRSEnb/Pyx5KWV
 LXnapgz1rZE3hb7OSqUJfsUGVOvsQ/qFuuaDJigt/1c47unyNlBQd/IlOkWol8owBwuU
 NUqc7y9VlyTvV6368XSc02JjdyI2Uzndd4mIFSfolH9F5/SqHWe2SBz0IYFDkotyl1VE
 LMZh/gvtUs4yhSPjQ+bxAxKlv3SY6EQbOfagtrIO+/KtZyVglFpJXZB0y09pni2ie040
 29Ow==
X-Gm-Message-State: AGi0Puaj8mu4WkqJUIQrpj0zEG/oolY1jdkANwj0e4ZuuWyOfUHC4xJ5
 faXlG7jc5vWah6W698KEPOz53g0fVdYcl4rk87eD/g==
X-Google-Smtp-Source: APiQypJDS4Ig3fLtht3np8evh8Ahm25jLEUMg+mChgwDxkFitWkfwAlXSox5L836eKJkVNb3xgmu/iWT+RSDRn2K2j8=
X-Received: by 2002:a25:5387:: with SMTP id h129mr24914557ybb.47.1589214072246; 
 Mon, 11 May 2020 09:21:12 -0700 (PDT)
MIME-Version: 1.0
References: <1588852671-61996-1-git-send-email-john.garry@huawei.com>
 <1588852671-61996-3-git-send-email-john.garry@huawei.com>
 <20200511110137.GC2986380@krava>
 <9f4ea413-325f-98b4-eb4c-e47aead4f455@huawei.com>
In-Reply-To: <9f4ea413-325f-98b4-eb4c-e47aead4f455@huawei.com>
From: Ian Rogers <irogers@google.com>
Date: Mon, 11 May 2020 09:21:00 -0700
Message-ID: <CAP-5=fWHipkL6Uq1vMaz-51ETPWajofDXd6RTBMr00pcyooo_g@mail.gmail.com>
Subject: Re: [PATCH RFC v3 02/12] perf jevents: Add support for system events
 tables
To: John Garry <john.garry@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_092116_424847_8C7E1C54 
X-CRM114-Status: GOOD (  20.17  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andi Kleen <ak@linux.intel.com>,
 qiangqing.zhang@nxp.com, Peter Zijlstra <peterz@infradead.org>,
 will@kernel.org, linuxarm@huawei.com,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, zhangshaokun@hisilicon.com,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 Jiri Olsa <jolsa@redhat.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>,
 robin.murphy@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 11, 2020 at 8:03 AM John Garry <john.garry@huawei.com> wrote:
>
> On 11/05/2020 12:01, Jiri Olsa wrote:
> > On Thu, May 07, 2020 at 07:57:41PM +0800, John Garry wrote:
> >
> > SNIP
> >
> >> +                                  &sys_event_tables);
> >> +            }
> >> +
> >>              print_events_table_prefix(eventsfp, tblname);
> >>              return 0;
> >>      }
> >> @@ -1180,7 +1253,6 @@ int main(int argc, char *argv[])
> >>      } else if (rc < 0) {
> >>              /* Make build fail */
> >>              fclose(eventsfp);
> >> -            free_arch_std_events();
> >>              ret = 1;
> >>              goto out_free_mapfile;
> >>      } else if (rc) {
> >> @@ -1206,27 +1278,31 @@ int main(int argc, char *argv[])
> >>      if (close_table)
> >>              print_events_table_suffix(eventsfp);
> >>
> >> -    if (!mapfile) {
> >> -            pr_info("%s: No CPU->JSON mapping?\n", prog);
> >> -            goto empty_map;
> >> +    if (mapfile) {
> >> +            if (process_mapfile(eventsfp, mapfile)) {
> >> +                    pr_err("%s: Error processing mapfile %s\n", prog,
> >> +                           mapfile);
> >> +                    /* Make build fail */
> >> +                    fclose(eventsfp);
> >> +                    ret = 1;
> >> +            }
> >> +    } else {
> >> +            pr_err("%s: No CPU->JSON mapping?\n", prog);
> >
> > shouldn't we jump to empty_map in here? there still needs to be a
> > mapfile, right?
>
> In theory we could only support sys events :)
>
> But I'll now make this a (empty map) failure case. And I think that
> another error case handling needs fixing in my patch.
>
>
> As for this:
>
>   +     fprintf(outfp, "struct pmu_sys_events pmu_sys_event_tables[] = {");
>  >> +
>  >> +   list_for_each_entry(sys_event_table, &sys_event_tables, list) {
>  >> +           fprintf(outfp, "\n\t{\n\t\t.table = %s,\n\t},",
>  >> +                   sys_event_table->name);
>  >> +   }
>  >> +   fprintf(outfp, "\n\t{\n\t\t.table = 0\n\t},");
>  >
>  > this will add extra tabs:
>  >
>  >          {
>  >                  .table = 0
>  >          },
>  >
>  > while the rest of the file starts items without any indent
>  >
>
> I'll ensure the indent is the same.
>
> BTW, is there anything to be said for removing the empty map feature
> (and always breaking the perf build instead)? I guess that it was just
> an early feature for dealing with unstable JSONs.

+1
I'd very much like it if JSON parse errors and the like didn't result
in an empty map but failed the build. I think ideally we could also
validate metric expressions using expr.y. If we include expr.y into
jevents then is there any need to parse the metric expression at
runtime? Could we just generate C code from jevents with a list of
events (aka ids) for programming and a dedicated print function for
each metric. The events would still be symbolic and checked at
runtime, but the expressions being C code could yield compile time
errors.

Thanks,
Ian

> Thanks,
> john
>
> >
> > jirka
> >
> >>      }
> >>
> >> -    if (process_mapfile(eventsfp, mapfile)) {
> >> -            pr_info("%s: Error processing mapfile %s\n", prog, mapfile);
> >> -            /* Make build fail */
> >> +    if (process_system_event_tables(eventsfp)) {
> >>              fclose(eventsfp);
> >> -            free_arch_std_events();
> >>              ret = 1;
> >>      }
> >>
> >> -
> >>      goto out_free_mapfile;
> >>
> >>   empty_map:
> >>      fclose(eventsfp);
> >>      create_empty_mapping(output_file);
> >> -    free_arch_std_events();
> >>   out_free_mapfile:
> >> +    free_arch_std_events();
> >> +    free_sys_event_tables();
> >>      free(mapfile);
> >>      return ret;
> >>   }
> >
> > SNIP
> >
> > .
> >
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
